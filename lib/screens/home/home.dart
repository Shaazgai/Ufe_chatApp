import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ufu_chat_app/TabBarPage/tab1.dart';
import 'package:ufu_chat_app/TabBarPage/tab2.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int activeIndex = 0;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  // String text = 'adsf';
  @override
  Widget build(BuildContext context) {
    // var i = activeIndex;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black54),
        actionsIconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            width: MediaQuery.of(context).size.width,
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //  mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //search button
        //             Container(
        //   margin: EdgeInsets.only(top: 50),
        //   child: SizedBox(
        //     width: 353,
        //     height: 66,
        //     child: ElevatedButton(
        //         style: ElevatedButton.styleFrom(
        //           backgroundColor: Color(0xffFF7A4F), //bgcolor
        //           shadowColor: Color(0xffFF7A4F),
        //           surfaceTintColor: Color(0xffFF7A4F),
        //           disabledBackgroundColor: Color(0xffFF7A4F),
        //           disabledForegroundColor: Color(0xffFF7A4F),
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(50),
        //           ),
        //         ),
        //         onPressed: () {
        //          // Navigator.of(context).push(createRoute(CreateView()));
        //         },
        //         child: Row(
        //         // crossAxisAlignment: CrossAxisAlignment.center,
        //         //  mainAxisSize: MainAxisSize.min,
        //           // mainAxisAlignment: MainAxisAlignment.spaceAround,
        //           children: [
        //             Padding(
        //               padding: const EdgeInsets.only(left: 39, right: 30),
        //               child: Image.asset(
        //                 'assets/images/search.png',
        //                 width: 48,
        //                 height: 48,
        //               ),
        //             ),
        //             Text('Хичээлийн код, группийн дугаар'),
        //           ],
        //         )),
        //   ),
        // ),
                  Text(
                    'Chats',
                    //  textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 50),
                  Container(
                    // height: 50,
                    width: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(213, 242, 255, 1),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: TabBar(
                          unselectedLabelColor: Colors.black,
                            labelColor: Color(0xffFF7A4F),
                            dividerColor:Color(0xffFF7A4F),
                            indicatorColor:Color(0xffFF7A4F),
                            // labelColor: i== activeIndex
                            // ? Color.fromRGBO(255, 122, 79, 1)
                            //       : Colors.black,
                            controller: tabController,
                            tabs: [
                              Tab(
                                text: 'Хичээл',
                              ),
                              Tab(
                                text: 'Баг',
                              )
                            ]),
                      )
                    ]),
                  ),
                   Expanded(
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        Subject(),
                        Team(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}






















// import 'package:flutter/material.dart';

// List<String> titles = <String>[
//   'Хичээл',
//   'Баг',
// ];

// void main() => runApp(const HomeView());


// class HomeView extends StatelessWidget {
//   const HomeView({super.key});

// //   @override
//   // State<HomeView> createState() => _HomeViewState();
//   @override
  
//   //  State<HomeView> createState() => _HomeViewState();
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//           colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
//       home: const HomeView(),
//     );
//   }
// }

// class _HomeViewState extends StatelessWidget {
//   // const HomeView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final ColorScheme colorScheme = Theme.of(context).colorScheme;
//     final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
//     final Color evenItemColor = colorScheme.primary.withOpacity(0.15);
//     const int tabsCount = 2;

//     return DefaultTabController(
//       initialIndex: 1,
//       length: tabsCount,
//       child: Scaffold(
//         appBar: AppBar(
//         title: Text(''),
//         backgroundColor: Colors.transparent,
//         bottomOpacity: 0.0,
//         elevation: 0.0,
//          //  backgroundColor: Colors.white,
//         iconTheme: IconThemeData(color: Colors.black54),
//         // actions: [Icon(Icons.menu)],
//         actionsIconTheme: IconThemeData(color: Colors.black),
//           notificationPredicate: (ScrollNotification notification) {
//             return notification.depth == 1;
//           },
       
//           scrolledUnderElevation: 4.0,
//           shadowColor: Theme.of(context).shadowColor,
//           bottom: TabBar(
//             tabs: <Widget>[
//               Tab(
//                 icon: const Icon(Icons.cloud_outlined),
//                 text: titles[0],
//               ),
//               Tab(
//                 icon: const Icon(Icons.beach_access_sharp),
//                 text: titles[1],
//               ),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: <Widget>[
//             Container(
//               margin: EdgeInsets.only(top: 20),
//               child: Text('Chats',
//                   style: TextStyle(
//                     fontSize: 34,
//                     fontWeight: FontWeight.w700,
//                     color: Colors.black,
//                   )),
//             ),
//             ListView.builder(
//               itemCount: 1,
//               itemBuilder: (BuildContext context, int index) {
//                 return ListTile(
//                   tileColor: index.isOdd ? oddItemColor : evenItemColor,
//                   title: Text('${titles[0]} $index'),
//                 );
//               },
//             ),
//                 ListView.builder(
//               itemCount: 8,
//               itemBuilder: (BuildContext context, int index) {
//                 return ListTile(
//                   tileColor: index.isOdd ? oddItemColor : evenItemColor,
//                   title: Text('MGM331_231'),
//                 );
//               },
//             ),
//             ListView.builder(
//               itemCount: 1,
//               itemBuilder: (BuildContext context, int index) {
//                 return ListTile(
//                   tileColor: index.isOdd ? oddItemColor : evenItemColor,
//                   title: Text('MGM331_231'),
//                 );
//               },
//             ),
//                ListView.builder(
//               itemCount: 1,
//               itemBuilder: (BuildContext context, int index) {
//                 return ListTile(
//                   tileColor: index.isOdd ? oddItemColor : evenItemColor,
//                   title: Text('MKT221_375'),
//                 );
//               },
//             ),
//              ListView.builder(
//               itemCount: 1,
//               itemBuilder: (BuildContext context, int index) {
//                 return ListTile(
//                   tileColor: index.isOdd ? oddItemColor : evenItemColor,
//                   title: Text('DBM221_375'),
//                 );
//               },
//             ),
//              ListView.builder(
//               itemCount: 2,
//               itemBuilder: (BuildContext context, int index) {
//                 return ListTile(
//                   tileColor: index.isOdd ? oddItemColor : evenItemColor,
//                   title: Text('MKT221_375'),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
