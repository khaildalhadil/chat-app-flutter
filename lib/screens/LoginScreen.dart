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
                  decoration: InputDecoration(
                    labelText: "User Name",
                    // labelStyle: TextStyle(fontSize: 40),
                    filled: true,
                    fillColor: Colors.white,
                    icon: Icon(Icons.person, color: Colors.blueAccent),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(28.0)),
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(28.0)),
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                        width: 1.0,
                      ),
                    ),
                  ),
                  maxLength: 20,
                  onChanged: (value) => userName = value,
                ),

                TextField(
                  decoration: InputDecoration(
                    labelText: "password",
                    // hintText: "user Name",
                    filled: true,
                    fillColor: Colors.white,
                    icon: Icon(Icons.password_sharp, color: Colors.blueAccent),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(28.0)),
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(28.0)),
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                        width: 1.0,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(28.0)),
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                        width: 1.0,
                      ),
                    ),
                  ),
                  maxLength: 20,
                  onChanged: (value) => password = value,
                ),

                // textField(Icon(Icons.password), "Password"),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent.shade700,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () => print("Check username and password"),
                  child: Text(
                    "Login",
                    style: TextStyle(height: 3.0, fontSize: 18.0),
                  ),
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
