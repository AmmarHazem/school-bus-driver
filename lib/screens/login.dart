import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Driver Login')),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              child: Column(
                children: <Widget>[
                  Image.asset('images/bus.jpg', height: 200),
                  const SizedBox(height: 15),
                  Text(
                    'Driver Login',
                    style: Theme.of(context)
                        .textTheme
                        .display1
                        .copyWith(color: Colors.black),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 30),
                  RaisedButton(
                    onPressed: () => Navigator.pushNamed(context, 'profile'),
                    child: Text('Login'),
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                  ),
                  const SizedBox(height: 30),
                  FlatButton(
                    child: Text('Forgot Password'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
