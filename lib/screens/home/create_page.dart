// import 'package:flutter/material.dart';
// import 'package:ufu_chat_app/models/models.dart';
// import 'package:ufu_chat_app/shared/utils/page_route.dart';

// import 'home.dart';

// class CreateView extends StatefulWidget {
//   const CreateView({super.key});

//   @override
//   State<CreateView> createState() => _CreateViewState();
// }

// class _CreateViewState extends State<CreateView> {
//   Avatar avatar = Avatar();
//   int activeIndex = 0;
//   List<String> list = ["background", 'Skin', 'Eye', 'Hair', 'Beard', 'Glass'];
//   List<Color> colors = [
//     Colors.amber,
//     Colors.red,
//     Colors.green,
//     Colors.blue,
//     Colors.black,
//     Colors.greenAccent,
//     Colors.orange,
//     Colors.yellow,
//     Colors.grey
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           bottomOpacity: 0.0,
//           elevation: 0.0,
//           //  backgroundColor: Colors.white,
//           iconTheme: IconThemeData(color: Colors.black54),
//           // actions: [Icon(Icons.abc)],
//         ),
//         body: Container(
//           width: double.infinity,
//           padding: const EdgeInsets.only(top: 35, left: 32, right: 32),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 alignment: Alignment.center,
//                 width: 288,
//                 height: 47.51,
//                 child: TextField(
//                   decoration: InputDecoration(
//                     hintText: 'Нэр:',
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//               ),
//               Container(
//                   height: 34,
//                      margin:  EdgeInsets.only(top: 30),
//                   alignment: Alignment.center,
//                   child: ListView(
//                   // padding: const EdgeInsets.only(top: 30),
//                     scrollDirection: Axis.horizontal,
//                     children: list.map((e) {
//                       final i = list.indexOf(e);
//                       return GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               activeIndex = i;
//                             });
//                           },
//                           child: Container(
//                               width: 100,
//                               height: 50,
//                               child: Text(
//                                 e,
//                                 style: TextStyle(
//                                     color: i == activeIndex
//                                         ? Color.fromRGBO(255, 122, 79, 1)
//                                         : Colors.black),
//                               )));
//                     }).toList(),
//                   )),
//               Container(
//                   margin: const EdgeInsets.only(top: 15 , bottom: 0),
//                   height: 50,
//                   alignment: Alignment.center,
//                   child: ListView(
//                     scrollDirection: Axis.horizontal,
//                     children: colors.map((e) {
//                       final i = colors.indexOf(e);
//                       return GestureDetector(
//                           onTap: () {
//                             switch (list[activeIndex]) {
//                               case 'bg':
//                                 setState(() {
//                                   avatar = Avatar(bg: colors[i].toString());
//                                 });
//                                 break;
//                               case 'skin':
//                                 avatar = Avatar(skin: colors[i].toString());
//                                 break;
//                               case 'eye':
//                                 avatar = Avatar(eye: colors[i].toString());
//                                 break;
//                               case 'hair':
//                                 avatar = Avatar(hair: colors[i].toString());
//                                 break;
//                             }
//                           },
//                           child: Container(
//                               margin: EdgeInsets.symmetric(horizontal: 8),
//                               width: 50,
//                               height: 49,
//                               decoration: BoxDecoration(
//                                   color: e,
//                                   borderRadius: BorderRadius.circular(100)),
//                               child: const SizedBox()));
//                     }).toList(),
//                   )),
//               // Text(avatar.bg ?? ""),
//               // Text(avatar.skin ?? ""),
//               // Text(avatar.eye ?? ""),
//               // Text(avatar.hair ?? ""),
//               // Text(avatar.beard ?? ""),
//                  Container(
//                 margin: EdgeInsets.only(top:30, bottom: 30),
//                 child: Center(
//                   child: Image.asset(
//                     'assets/images/Avatar.png',
//                     width: 230,
//                     height: 230,
//                   ),
//                 ),
//               ),
//                  Container(
//                   alignment: Alignment.centerLeft,
//                 // margin: EdgeInsets.only(top: 20),
//                 child: Text('Face Emotion',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                       color: Color.fromRGBO(0, 0, 0, 1),
//                     )),
//               ),
//               Container(
//                    margin: EdgeInsets.only(top: 10),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: 
//                     [Image.asset(
//                       'assets/images/Avatar.png',
//                       width: 69,
//                       height: 69,
//                     ),
//                   ],
//                 ),
//               ),
//            Container(
//                 margin: EdgeInsets.only(top: 30),
//                 alignment: Alignment.bottomRight,
//                 child: SizedBox(
//                   width: 66,
//                   height: 66,
//                   child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Color(0xffFF7A4F), //bgcolor
//                         shadowColor: Color(0xffFF7A4F),
//                         surfaceTintColor: Color(0xffFF7A4F),
//                         disabledBackgroundColor: Color(0xffFF7A4F),
//                         disabledForegroundColor: Color(0xffFF7A4F),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(50),
//                         ),
//                       ),
//                       onPressed: () {
//                         Navigator.of(context).push(createRoute(HomeView()));
//                       },
//                       child: Row(
//                         // crossAxisAlignment: CrossAxisAlignment.end,
//                         //  mainAxisSize: MainAxisSize.min,
//                         // mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Text('Next'),
//                         ],
//                       )),
//                 ),
//               ),
//             ],
            
//           ),
//         ));
        
//   }
// }

// //  children: [
// //             GestureDetector(
// //               onTap: () {
// //                 Navigator.of(context).push(createRoute(HomeView()));
// //               },
// //               child: Container(
// //                 decoration: BoxDecoration(
// //                     color: Color(0xffFF7A4F),
// //                     borderRadius: BorderRadius.circular(50)),
// //                 child: Text(
// //                   'Нэр',
// //                   style: TextStyle(
// //                       fontSize: 16,
// //                       fontWeight: FontWeight.w200,
// //                       color: Colors.grey),
// //                 ),
// //               ),
// //             ),
// //             TextFormField()
// //           ],