import 'package:samples/utilities/CommonFunctions.dart';
import 'package:samples/utilities/CurrentUser.dart';

final buyDocument = fInstance
    .collection('users')
    .document(CurrentUser.uid)
    .collection('charges')
    .document();

final refundDocument = fInstance
    .collection('users')
    .document(CurrentUser.uid)
    .collection('refunds')
    .document();    
