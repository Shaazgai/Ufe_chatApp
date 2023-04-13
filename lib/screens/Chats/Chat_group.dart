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
      body: Center(
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 30, right: 30),
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: 100,
              height: 35,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFF7A4F), //bgcolor
                    shadowColor: Color(0xffFF7A4F),
                    surfaceTintColor: Color(0xffFF7A4F),
                    disabledBackgroundColor: Color(0xffFF7A4F),
                    disabledForegroundColor: Color(0xffFF7A4F),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(50),
                    // ),
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Container(
                            child: AlertDialog(
                              title: Text('Logout'),
                              content: TextField(
                                onChanged: (value) {},
                                decoration:
                                    InputDecoration(hintText: 'user add'),
                              ),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('Cancel')),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('Add'))
                              ],
                            ),
                          );
                        });
                    // Navigator.of(context).push(createRoute(HomeView()));
                  },
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    //  mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Next',
                      ),
                    ],
                  )),
            ),
          ),
        ]),
      ),
      // body: GestureDetector(
      //   onTap: () => FocusScope.of(context).unfocus(),
      //   child: Container(
      //     width: 410,
      //     height: 53,
      //     child: Row(children: <Widget>[
      //       IconButton(
      //         icon: Icon(Icons.add),
      //         iconSize: 25.0,
      //         color: Theme.of(context).primaryColor,
      //         onPressed: () {},
      //       ),
      //       Expanded(
      //         child: SizedBox(
      //           width: 307,
      //           height: 53,
      //           child: TextField(
      //             textCapitalization: TextCapitalization.sentences,
      //             onChanged: (value) {},
      //             decoration: InputDecoration.collapsed(
      //               border: OutlineInputBorder(
      //                 borderRadius: BorderRadius.circular(15),
      //               ),
      //               hintText: 'Type a message',
      //               hintStyle: TextStyle(fontSize: 16),
      //             ),
      //           ),
      //         ),
      //       ),
      //       IconButton(
      //         icon: Icon(Icons.send),
      //         iconSize: 25.0,
      //         disabledColor: Color(0xffFF7A4F),
      //         onPressed: () {},
      //       ),
      //     ]),
      //   ),
      // ),
    );
  }
}
