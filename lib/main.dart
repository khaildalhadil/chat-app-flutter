import 'package:chatappflutter/screens/ChatScreen.dart';
import 'package:chatappflutter/screens/LoginScreen.dart';
import 'package:chatappflutter/screens/Registration.dart';
import 'package:chatappflutter/screens/WelcomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        Registration.id: (context) => Registration(),
      },
    );
  }
}
