class Avatar {
  String? bg;
  String? skin;
  String? eye;
  String? hair;
  bool? glass;
  String? beard;

  Avatar({this.bg, this.skin, this.eye, this.hair, this.glass, this.beard});

  Avatar.fromJson(Map<String, dynamic> json) {
    bg = json['bg'];
    skin = json['skin'];
    eye = json['eye'];
    hair = json['hair'];
    glass = json['glass'];
    beard = json['beard'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bg'] = this.bg;
    data['skin'] = this.skin;
    data['eye'] = this.eye;
    data['hair'] = this.hair;
    data['glass'] = this.glass;
    data['beard'] = this.beard;
    return data;
  }
}
