class GroupModel {
  String? sId;
  String? groupname;
  String? username;
  bool? isLesson;
  String? groupid;
  String? createdAt;
  String? updatedAt;
  int? iV;

  GroupModel(
      {this.sId,
      this.groupname,
      this.username,
      this.isLesson,
      this.groupid,
      this.createdAt,
      this.updatedAt,
      this.iV});

  GroupModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    groupname = json['groupname'];
    username = json['username'];
    groupid = json['groupid'];
    isLesson = json['isLesson'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['groupname'] = groupname;
    data['username'] = username;
    data['groupid'] = groupid;
    data['isLesson'] = isLesson;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    return data;
  }
}
