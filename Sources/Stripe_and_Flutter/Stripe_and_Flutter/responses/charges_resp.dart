class ChargesJSON {
  List<Data> data;

  ChargesJSON({this.data});

  ChargesJSON.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String id;
  String object;
  int amount;
  String clientSecret;
  int created;
  String currency;
  String customer;
  String flow;
  bool livemode;
  String statementDescriptor;
  String status;
  String type;
  String usage;

  Data(
      {this.id,
      this.object,
      this.amount,
      this.clientSecret,
      this.created,
      this.currency,
      this.customer,
      this.flow,
      this.livemode,
      this.statementDescriptor,
      this.status,
      this.type,
      this.usage});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    object = json['object'];
    amount = json['amount'];
    clientSecret = json['client_secret'];
    created = json['created'];
    currency = json['currency'];
    customer = json['customer'];
    flow = json['flow'];
    livemode = json['livemode'];
    statementDescriptor = json['statement_descriptor'];
    status = json['status'];
    type = json['type'];
    usage = json['usage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['object'] = this.object;
    data['amount'] = this.amount;
    data['client_secret'] = this.clientSecret;
    data['created'] = this.created;
    data['currency'] = this.currency;
    data['customer'] = this.customer;
    data['flow'] = this.flow;
    data['livemode'] = this.livemode;
    data['statement_descriptor'] = this.statementDescriptor;
    data['status'] = this.status;
    data['type'] = this.type;
    data['usage'] = this.usage;
    return data;
  }
}
