import 'package:flutter/material.dart';

import 'package:hotel_hunter/Models/appConstants.dart';

import 'package:hotel_hunter/Screens/signUpPage.dart';

import 'guestHomePage.dart';

class LoginPage extends StatefulWidget {

  static final String routeName = '/loginPageRoute';

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  void _signUp() {
    Navigator.pushNamed(context, SignUpPage.routeName);
  }

  void _login() {
    Navigator.pushNamed(context, GuestHomePage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 100, 50, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                  'Welcome to ${AppConstants.appName}!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
                textAlign: TextAlign.center,
              ),
              Form(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 35.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Username/email'
                          ),
                          style: TextStyle(
                            fontSize: 25.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Password'
                          ),
                          style: TextStyle(
                            fontSize: 25.0,
                          ),
                        ),
                      ),
                    ],
                  )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: MaterialButton(
                  onPressed: () {
                    _login();
                  },
                  child: Text(
                      'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                  color: Colors.blue,
                  height: MediaQuery.of(context).size.height / 12,
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: MaterialButton(
                  onPressed: () {
                    _signUp();
                  },
                  child: Text(
                      'Sign Up!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                  color: Colors.grey,
                  height: MediaQuery.of(context).size.height / 12,
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
