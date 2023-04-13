import 'package:flutter/material.dart';
import 'package:ufu_chat_app/screens/home/create_page.dart';
import 'package:ufu_chat_app/screens/home/home.dart';

import '../shared/shared.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 65),
          child: Center(
            child: Image.asset(
              'assets/images/Login_pro.png',
              width: 414.48,
              height: 488.6,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Text('lorem',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Colors.blueGrey,
              )),
        ),
        Container(
          margin: EdgeInsets.only(top: 50),
          child: SizedBox(
            width: 353,
            height: 66,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffFF7A4F), //bgcolor
                  shadowColor: Color(0xffFF7A4F),
                  surfaceTintColor: Color(0xffFF7A4F),
                  disabledBackgroundColor: Color(0xffFF7A4F),
                  disabledForegroundColor: Color(0xffFF7A4F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(createRoute(HomeView()));
                },
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  //  mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 39, right: 30),
                      child: Image.asset(
                        'assets/images/google_logo.png',
                        width: 48,
                        height: 48,
                      ),
                    ),
                    Text('Sign Up with Google'),
                  ],
                )),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 50),
          child: Center(
            child: Image.asset(
              'assets/images/Hgver_.png',
              width: 66,
              height: 24,
            ),
          ),
        )
      ],
    ));
  }
}


            // padding:EdgeInsets.only(bottom: 20),
               // backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(255, 122, 79, 1)
