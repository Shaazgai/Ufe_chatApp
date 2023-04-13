import 'package:flutter/material.dart';
import 'package:ufu_chat_app/TabBarPage/tab1.dart';
import 'package:ufu_chat_app/TabBarPage/tab2.dart';
import 'package:uuid/uuid.dart';

import '../../provider/base_client.dart';

class HomeView extends StatefulWidget {
  final String username;
  const HomeView({super.key, required this.username});

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
    final TextEditingController groupnameController = TextEditingController();
    final BaseClient baseClient = BaseClient();
    var uuid = const Uuid();
    void insertData() async {
      await baseClient.post("group", {
        "groupname": groupnameController.text,
        "username": widget.username,
        "groupid": uuid.v4(),
        "isLesson": "false",
      }).then((value) {
        print("-----------------------");
        print(value);
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.username,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            )),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black54),
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
                                insertData();
                                Navigator.pop(context);
                              },
                              child: const Text("Create"))
                        ],
                        content: TextFormField(
                          controller: groupnameController,
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
        actionsIconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            width: MediaQuery.of(context).size.width,
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //  mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Chats',
                    //  textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 50),
                  Container(
                    // height: 50,
                    width: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(213, 242, 255, 1),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: TabBar(
                            unselectedLabelColor: Colors.black,
                            labelColor: const Color(0xffFF7A4F),
                            dividerColor: const Color(0xffFF7A4F),
                            indicatorColor: const Color(0xffFF7A4F),
                            // labelColor: i== activeIndex
                            // ? Color.fromRGBO(255, 122, 79, 1)
                            //       : Colors.black,
                            controller: tabController,
                            tabs: const [
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
                        Subject(username: widget.username),
                        Team(
                          username: widget.username,
                        ),
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
