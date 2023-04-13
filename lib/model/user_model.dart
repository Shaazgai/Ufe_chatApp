class User {
  final int userid;
  final String username;
  final int groupid;

  User({
    required this.username,
    required this.userid,
    required this.groupid,
  });

  factory User.fromJson(Map<String, dynamic> user) {
    return User(
        username: user['username'],
        userid: user['id'],
        groupid: user['groupid']);
  }
}
