import 'package:flutter/material.dart';

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
                Text(
                  "Flash Chat",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade500,
                foregroundColor: Colors.white,
              ),
              onPressed: () => Navigator.pushNamed(context, "/Login"),
              child: Text(
                "Login",
                style: TextStyle(height: 3.0, fontSize: 18.0),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent.shade700,
                foregroundColor: Colors.white,
              ),
              onPressed: () => Navigator.pushNamed(context, "/Register"),
              child: Text(
                " Register",
                style: TextStyle(height: 3.0, fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
