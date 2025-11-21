import 'package:chatappflutter/Widgets/AuthBtn.dart';
import 'package:chatappflutter/constants.dart';
import 'package:chatappflutter/screens/Registration.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String id = '/Login';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              spacing: 35.0,
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
                    labelText: "Password",
                    icon: Icon(Icons.password_sharp),
                  ),
                  onChanged: (value) => print(value),
                  maxLength: 20,
                ),

                // textField(Icon(Icons.password), "Password"),
                AuthBtn(
                  Colors.blue.shade600,
                  "Login",
                  () => print("login logic"),
                ),
                Row(
                  children: [
                    Text("You Don't Have Account Click "),
                    TextButton(
                      onPressed: () => {
                        Navigator.pushNamed(context, Registration.id),
                      },
                      child: Text(
                        "Register",
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

// class textField extends StatelessWidget {
//   final Icon icons;
//   final String text;

//   textField(this.icons, this.text);

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       decoration: InputDecoration(
//         labelText: text,
//         // hintText: "user Name",
//         filled: true,
//         fillColor: Colors.white,
//         icon: icons,
//         border: OutlineInputBorder(
//           // borderR
//           borderSide: BorderSide(color: Colors.blue, width: 2.0),
//         ),
//       ),
//       maxLength: 20,
//       onChanged: (value) => print(value),
//     );
//   }
// }
