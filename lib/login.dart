import 'package:flutter/material.dart';
import 'sign_up.dart';

class SignInPage extends StatefulWidget {
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign In'), foregroundColor: Colors.white, backgroundColor: Colors.redAccent,),
      body: Padding(padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Welcome Back", textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Colors.redAccent, fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),

            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: Colors.redAccent,
                ),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.redAccent, width: 2),
                ),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 10,),

            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: Colors.redAccent,
                ),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.redAccent, width: 2),
                ),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 10,),

            ElevatedButton(
              onPressed: () {
                print("Email: ${_emailController.text}");
                print("Password: ${_passwordController.text}");
              },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 55, vertical: 15),
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(fontSize: 18)
              ),
              child: Text('Sign In'),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Don't you have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.redAccent,
                  ),
                  child: Text('Register',),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}