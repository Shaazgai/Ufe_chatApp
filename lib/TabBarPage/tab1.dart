// import 'package:flutter/material.dart';

// class Subject extends StatelessWidget {
//   const Subject({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:Column(

//         children:[
//           Container(

//             child: Text('MGM331_231',),

//             ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:ufu_chat_app/screens/Chats/Chat_Set.dart';
import 'package:ufu_chat_app/shared/shared.dart';

void main() {
  runApp(Subject());
}

class Subject extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Subject> {
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
              // Container(
              //     child: TextFormField(
              //   decoration: InputDecoration(
              //     suffixIcon: InkWell(
              //       onTap: () => "",
              //       child: Container(
              //         height: 25,
              //         color: Colors.transparent,
              //         child: AspectRatio(
              //           aspectRatio: 1 / 1,
              //           child: Center(
              //             child: Icon(
              //               Icons.search,
              //               color: Colors.black,
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //     hintText: 'Хичээлийн код, группийн дугаар',
              //     contentPadding: EdgeInsets.symmetric(horizontal: 15),
              //     border: OutlineInputBorder(
              //       borderSide: BorderSide(width: 1, color: Colors.black),
              //     ),
              //   ),
              // )),
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
                            'Changes:23',
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
                                  'Students:30',
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
                            Navigator.of(context).push(createRoute(chat()));
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
