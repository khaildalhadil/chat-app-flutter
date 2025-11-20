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
                  decoration: InputDecoration(
                    labelText: "User Name",
                    // hintText: "user Name",
                    filled: true,
                    fillColor: Colors.white,
                    icon: Icon(Icons.person),
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
                    labelText: "Email ",
                    // hintText: "user Name",
                    filled: true,
                    fillColor: Colors.white,
                    icon: Icon(Icons.email),
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
                    icon: Icon(Icons.password_sharp),
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
                    "Reigster",
                    style: TextStyle(height: 3.0, fontSize: 18.0),
                  ),
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
