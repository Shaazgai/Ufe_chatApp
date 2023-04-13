// import 'package:flutter/material.dart';

// class Team extends StatelessWidget {
//   const Team({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             child: Container(
//               child: Text('MGM331_231')
//               )
//               //button
//             ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:ufu_chat_app/screens/Chats/Chat_group.dart';
import 'package:ufu_chat_app/shared/shared.dart';

void main() {
  runApp(Team());
}

class Team extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Team> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(
              child: Column(children: <Widget>[
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 388,
                height: 113,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.only(top: 13, left: 16),
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MGM331_231',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3, left: 8),
                          child: Text(
                            'Changes:10',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              color: Colors.white,
                              icon: Icon(Icons.group),
                              iconSize: 15,
                              disabledColor: Color(0xffFF7A4F),
                              onPressed: () {},
                            ),
                            SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  right: 8,
                                  top: 4,
                                ),
                                child: Text(
                                  'Students:100',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 18.5, left: 20),
                      // alignment: Alignment.center,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffFF7A4F), //bgcolor
                            shadowColor: Color(0xffFF7A4F),
                            surfaceTintColor: Color(0xffFF7A4F),
                            disabledBackgroundColor: Color(0xffFF7A4F),
                            disabledForegroundColor: Color(0xffFF7A4F),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(createRoute(Group()));
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: Text(
                                  'Go Chat',
                                ),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              // Text("asdasd")
            ],
          ),
        ),
      ]))),
    );
  }
}
