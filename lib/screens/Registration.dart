import 'package:chatappflutter/Widgets/AuthBtn.dart';
import 'package:chatappflutter/constants.dart';
import 'package:chatappflutter/screens/LoginScreen.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  static const String id = '/Register';

  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  late String userName;
  late String password;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: 25.0,
              children: [
                Hero(
                  tag: 'logo',
                  child: Container(
                    height: 200.0,
                    child: Image.network(
                      "https://cdn-icons-png.flaticon.com/512/5962/5962463.png",
                    ),
                  ),
                ),

                TextField(
                  decoration: kTextFieldDecoration.copyWith(
                    labelText: "User Name",
                    icon: Icon(Icons.person),
                  ),
                  onChanged: (value) => print(value),
                  maxLength: 20,
                ),

                TextField(
                  decoration: kTextFieldDecoration.copyWith(
                    labelText: "Email",
                    icon: Icon(Icons.email),
                  ),
                  onChanged: (value) => print(value),
                  maxLength: 20,
                ),

                TextField(
                  decoration: kTextFieldDecoration.copyWith(
                    labelText: "Password",
                    icon: Icon(Icons.password_sharp),
                  ),
                  onChanged: (value) => print(value),
                  maxLength: 20,
                ),
                // textField(Icon(Icons.password), "Password"),
                AuthBtn(
                  Colors.blue.shade600,
                  "Register",
                  () => print("Register logic"),
                ),
                Row(
                  children: [
                    Text("If You Have Account Click Here "),
                    TextButton(
                      onPressed: () => {
                        Navigator.pushNamed(context, LoginScreen.id),
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
