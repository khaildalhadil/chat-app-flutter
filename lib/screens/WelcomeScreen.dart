import 'package:chatappflutter/Widgets/AuthBtn.dart';
import 'package:chatappflutter/screens/LoginScreen.dart';
import 'package:chatappflutter/screens/Registration.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = '/';

  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 35.0,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10.0,
              children: [
                Hero(
                  tag: 'logo',
                  child: Container(
                    height: 60.0,

                    child: Image.network(
                      "https://cdn-icons-png.flaticon.com/512/5962/5962463.png",
                    ),
                  ),
                ),
                SizedBox(
                  width: 250.0,
                  child: DefaultTextStyle(
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        ScrambleAnimatedText(
                          "Flash Chat",
                          speed: const Duration(milliseconds: 200),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            AuthBtn(
              Colors.blue.shade600,
              "Login",
              () => {Navigator.pushNamed(context, LoginScreen.id)},
            ),
            AuthBtn(
              Colors.blue.shade800,
              "Register",
              () => {Navigator.pushNamed(context, Registration.id)},
            ),
          ],
        ),
      ),
    );
  }
}
