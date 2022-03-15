// LEMBRAR DE EDITAR O PUBSPEC.YAML 

// flutter:
//
// # The following line ensures that the Material Icons font is
// # included with your application, so that you can use the icons in
// # the material Icons class.
// uses-material-design: true
//
// # To add assets to your application, add an assets section, like this:
// # assets:
// #   - images/a_dot_burr.jpeg
// #   - images/a_dot_ham.jpeg
// assets:
// - assets/images/img.jpg


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/img.jpg',
                width: 50,
                height: 50,
              ),
            ],
          )
      ),
    );
  }
}
