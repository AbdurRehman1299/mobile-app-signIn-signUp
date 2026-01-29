import 'package:flutter/material.dart';
import 'login.dart';

class RegisterPage extends StatefulWidget {

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register'), foregroundColor: Colors.white, backgroundColor: Colors.redAccent,),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Create Account', textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Colors.redAccent, fontWeight: FontWeight.bold),),
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

            TextField(
              controller: _confirmPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirm your Password',
                labelStyle: TextStyle(
                  color: Colors.redAccent,
                ),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.redAccent, width: 2),
                ),
                prefixIcon: Icon(Icons.lock_outline),
              ),
            ),
            SizedBox(height: 10,),

            ElevatedButton(
              onPressed: () {
                print("Registering user: ${_emailController.text}");
                print("Password: ${_passwordController.text}");
                print("Confirm Password: ${_confirmPasswordController.text}");
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 55, vertical: 15)
              ),
              child: Text('Register'),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Already have an account?'),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPage()),
                    );
                  },
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.redAccent
                  ),
                  child: Text('Sign In'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}