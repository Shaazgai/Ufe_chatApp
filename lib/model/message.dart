class Message {
  String? sId;
  String? groupid;
  String? username;
  String? message;
  String? createdAt;
  String? updatedAt;

  Message(
      {this.sId,
      this.groupid,
      this.username,
      this.message,
      this.createdAt,
      this.updatedAt});

  Message.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    groupid = json['groupid'];
    username = json['username'];
    message = json['message'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['groupid'] = groupid;
    data['username'] = username;
    data['message'] = message;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}
