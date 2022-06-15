class CreditCards {
  String number = "";
  String name = "";
  String skt = "";
  String ccv = "";

  CreditCards({
    required String number,
    required String name,
    required String skt,
    required String ccv,
  }) {
    this.number = number;
    this.name = name;
    this.skt = skt;
    this.ccv = ccv;
  }
  CreditCards.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    name = json['name'];
    skt = json['skt'];
    ccv = json['ccv'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['number'] = number;
    data['name'] = name;
    data['skt'] = skt;
    data['ccv'] = ccv;
    return data;
  }

}
