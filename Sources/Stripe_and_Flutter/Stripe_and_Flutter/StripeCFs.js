const functions = require('firebase-functions');
const admin = require('firebase-admin');
admin.initializeApp(functions.config().firebase);

const firestore = admin.firestore();
const settings = { timestampsInSnapshots: true };
firestore.settings(settings);

// Remember to set token using >> firebase functions:config:set stripe.token="SECRET_STRIPE_TOKEN_HERE"
const stripe = require('stripe')(functions.config().stripe.token);
const cors = require('cors')({
    origin: true,
});

//for getting list of stripe charges...
exports.listCharges = functions.https.onRequest(async (req, res) => {
    let cust_id;

    let email = req.query.email;
    console.log('E-mail is ', email);

    await firestore.collection('users').where("email", "==", email).get().then(snapshot => {
        snapshot.forEach(doc => {
            cust_id = doc.cust_id;
        });
    });

    console.log('Customer ID : ', cust_id);

    const charges = await stripe.charges.list({
        // limit: 3,
        customer: cust_id
    });
    return cors(req, res, () => {
        res.status(200).send(charges);
    });
});

exports.createUserAccount = functions.auth.user().onCreate(event => {
    console.log('User id to be created..', event.uid);

    const userID = event.uid;
    const email = event.email;
    const photoURL = event.photoURL;
    const name = event.displayName;

    return firestore.collection('users').doc(`${userID}`).set({
        email: email,
        photoURL: photoURL,
        name: name,
        cust_id: ''
    }).then(async function () {
        console.log("Created user... ", userID);

        //Create stripe customer...
        const customer = await stripe.customers.create({
            email: email
        });

        firestore.collection('users')
            .doc(`${userID}`).update({
                cust_id: customer.id
            }).then(function () {
                console.log("Created stripe user... ", customer.id);
            });

    }).catch(error => {
        console.error("Error while creating 🐞🐞🐞🐞 ", error);
    });
});

// exports.addCard = functions.firestore.document('users/{userId}/')

//https://github.com/firebase/functions-samples/blob/master/stripe/functions/index.js
//For adding payment source...https://stripe.com/docs/api/cards/create?lang=node
//token gen from Client side...recommended by Stripe    
exports.addPaymentSource = functions.firestore.document('users/{userId}/tokens/{tokenId}').onWrite(async (change, context) => {
    //Get token that strike sdk gave to the client...
    const data = change.after.data();

    if (data == null) { return null }
    const token = data.tokenId;
    const snapshot = await firestore.collection('users').doc(context.params.userId).get();
    const customer = snapshot.data().cust_id;

    //calling stripe api...
    // console.log(customer + ":"  + token + ":" + context.params.userId);
    const respFromStripe = await stripe.customers.createSource(customer, { source: token });
    // console.log(respFromStripe);
    return firestore.collection('users').doc(context.params.userId)
        .collection('sources').doc(respFromStripe.card.fingerprint).set(respFromStripe, { merge: true });
});

//Make purchase...
exports.createStripeCharge = functions.firestore.document('users/{userId}/charges/{chargeId}').onCreate(async (change, context) => {
    try {
        //get the customer..to talk with Stripe...
        const snapshot = await firestore.collection('users').doc(context.params.userId).get();
        const customer = snapshot.data().cust_id;
        const amount = change.data().amount;
        const currency = change.data().currency;
        const description = change.data().description;



        const charge = { amount, currency, customer, description };
        const idempotentKey = context.params.chargeId;

        const response = await stripe.charges.create(charge, { idempotency_key: idempotentKey });
        return change.ref.set(response, { merge: true });

    } catch (error) {
        console.error(error);
        await change.ref.set({ error: userFacingMessage(error) }, { merge: true });
    }

});

//Handle refund....
exports.handleRefund = functions.firestore.document('users/{userId}/refunds/{refundId}').onCreate(async (change, context) => {
    try {
        const snapshot = await firestore.collection('users').doc(context.params.userId).get();
        const customer = snapshot.data().cust_id;
        const chargeId = change.data().chargeId;

        const response = await stripe.refunds.create({ charge: chargeId });
        return change.ref.set({ response: response, cust_id: customer }, { merge: true });

    } catch (error) {
        console.error(error);
        await change.ref.set({ error: userFacingMessage(error) }, { merge: true });
    }
});

//User facing error message...
function userFacingMessage(error) {
    return error.type ? error.message : 'An error occurred, support-team has been alerted!!!';
}

