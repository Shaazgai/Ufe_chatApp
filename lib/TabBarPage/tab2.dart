import 'package:flutter/material.dart';
import 'package:ufu_chat_app/screens/Chats/Chat_group.dart';

import '../model/group_model.dart';
import '../provider/base_client.dart';

class Team extends StatefulWidget {
  final String username;
  const Team({super.key, required this.username});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Team> {
  final BaseClient _baseClient = BaseClient();
  List<GroupModel> groups = [];
  @override
  initState() {
    getData();
    super.initState();
  }

  void getData() async {
    await _baseClient.get("group").then((value) {
      setState(() {
        groups = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: groups.length,
        itemBuilder: (context, index) {
          if (groups[index].username == widget.username &&
              groups[index].isLesson == false) {
            return Card(
              child: ListTile(
                title: Text(groups[index].groupname!),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Group(
                        username: widget.username,
                        groupid: groups[index].groupid!,
                        groupname: groups[index].groupname!,
                      ),
                    ),
                  );
                },
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
