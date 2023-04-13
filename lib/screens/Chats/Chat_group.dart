import 'package:flutter/material.dart';

//group

class Group extends StatefulWidget {
  const Group({super.key});

  @override
  State<Group> createState() => _GroupState();
}

class _GroupState extends State<Group> {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
          //  backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black54),
          actions: [Icon(Icons.abc)]),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          width: 410,
          height: 53,
          child: Row(children: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              iconSize: 25.0,
              color: Theme.of(context).primaryColor,
              onPressed: () {},
            ),
            Expanded(
              child: SizedBox(
                width: 307,
                height: 53,
                child: TextField(
                  textCapitalization: TextCapitalization.sentences,
                  onChanged: (value) {},
                  decoration: InputDecoration.collapsed(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: 'Type a message',
                    hintStyle: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.send),
              iconSize: 25.0,
              disabledColor: Color(0xffFF7A4F),
              onPressed: () {},
            ),
          ]),
        ),
      ),
    );
  }
}