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

  String displayText = '';

  changeText(){
    setState(() {
      this.displayText = 'Some text to display';
    });
  }

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
              MaterialButton(
                onPressed: () => changeText(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.airplanemode_active,
                        color: Colors.white,
                      ),
                      Text('Press me'),
                    ],
                  ),
                color: Colors.black,
                textColor: Colors.white,
                highlightColor: Colors.blue,
                splashColor: Colors.red,
                elevation: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(this.displayText),
              ),
            ],
          )
      ),
    );
  }
}
