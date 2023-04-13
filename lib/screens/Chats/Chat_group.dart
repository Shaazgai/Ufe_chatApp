import 'package:flutter/material.dart';

import '../../model/message.dart';
import '../../provider/base_client.dart';

//group

class Group extends StatefulWidget {
  final String username;
  final String groupid;
  final String groupname;
  const Group(
      {super.key,
      required this.username,
      required this.groupid,
      required this.groupname});

  @override
  State<Group> createState() => _GroupState();
}

class _GroupState extends State<Group> {
  final TextEditingController _messageContoller = TextEditingController();
  final TextEditingController _userContoller = TextEditingController();
  final BaseClient _baseClient = BaseClient();
  @override
  initState() {
    getData();
    super.initState();
  }

  void getData() async {
    _baseClient.getMessage("message").then((value) {
      setState(() {
        messages = value;
      });
    });
  }

  void insertMessage() async {
    await _baseClient.postMessage("message", {
      "message": _messageContoller.text,
      "username": widget.username,
      "groupid": widget.groupid,
    }).then((value) {
      print("-----------------------");
      print(value);
    });
  }

  void insertUser() async {
    await _baseClient.post("group", {
      "username": _userContoller.text,
      "groupid": widget.groupid,
      "isLesson": "false",
      "groupname": widget.groupname,
    }).then((value) {
      print("-----------------------");
      print(value);
    });
  }

  List<Message> messages = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        //  backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black54),
        title: Text(widget.groupname,
            style: const TextStyle(
                color: Colors.black54, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Container(
                          child: AlertDialog(
                        title: const Text("Logout"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Cancel")),
                          TextButton(
                              onPressed: () {
                                insertUser();
                                Navigator.pop(context);
                              },
                              child: const Text("Add"))
                        ],
                        content: TextFormField(
                          controller: _userContoller,
                          autocorrect: false,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: const InputDecoration(
                            labelText: "Some Text",
                            labelStyle:
                                TextStyle(fontSize: 20.0, color: Colors.black),
                            fillColor: Colors.blue,
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50.0)),
                                borderSide:
                                    BorderSide(color: Colors.purpleAccent)),
                          ),
                        ),
                      ));
                    });
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: messages.isNotEmpty
                  ? ListView.builder(
                      itemCount: messages.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.all(8.0),
                          child: messages[index].groupid == widget.groupid
                              ? Row(
                                  mainAxisAlignment: messages[index].username ==
                                          widget.username
                                      ? MainAxisAlignment.end
                                      : MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          messages[index].username ==
                                                  widget.username
                                              ? CrossAxisAlignment.end
                                              : CrossAxisAlignment.start,
                                      children: [
                                        Text(messages[index].username!),
                                        Container(
                                            padding: const EdgeInsets.all(8.0),
                                            decoration: BoxDecoration(
                                                color:
                                                    messages[index].username ==
                                                            widget.username
                                                        ? Colors.blue
                                                        : Colors.grey,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.0)),
                                            child:
                                                Text(messages[index].message!))
                                      ],
                                    )
                                  ],
                                )
                              : const SizedBox(),
                        );
                      },
                    )
                  : const SizedBox()),
          Container(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                // First child is enter comment text input
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    controller: _messageContoller,
                    autocorrect: false,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: const InputDecoration(
                      labelText: "Some Text",
                      labelStyle:
                          TextStyle(fontSize: 20.0, color: Colors.black),
                      fillColor: Colors.blue,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: BorderSide(color: Colors.purpleAccent)),
                    ),
                  ),
                )),
                // Second child is button
                IconButton(
                  icon: const Icon(Icons.send),
                  iconSize: 20.0,
                  onPressed: () async {
                    insertMessage();
                    _messageContoller.clear();
                  },
                )
              ])),
        ],
      ),
    );
  }
}
