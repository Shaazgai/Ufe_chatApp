import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ufu_chat_app/screens/home/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 65),
          child: Center(
            child: Image.asset(
              'assets/images/Login_pro.png',
              width: 414.48,
              height: 488.6,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: const Text('lorem',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Colors.blueGrey,
              )),
        ),
        Container(
          margin: const EdgeInsets.only(top: 50),
          child: SizedBox(
            width: 353,
            height: 66,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffFF7A4F), //bgcolor
                  shadowColor: const Color(0xffFF7A4F),
                  surfaceTintColor: const Color(0xffFF7A4F),
                  disabledBackgroundColor: const Color(0xffFF7A4F),
                  disabledForegroundColor: const Color(0xffFF7A4F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () async {
                  try {
                    await _googleSignIn.signIn().then((value) {
                      String username = value!.displayName!;

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  HomeView(username: username)));
                    });
                  } catch (error) {
                    print(error);
                    print("This is error from login");
                  }
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
                    const Text('Sign Up with Google'),
                  ],
                )),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 50),
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
