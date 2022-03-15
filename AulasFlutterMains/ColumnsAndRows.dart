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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: [
                    ColoredCircle(color: Colors.red),
                    ColoredCircle(color: Colors.yellow),
                    ColoredCircle(color: Colors.green),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ColoredCircle(color: Colors.red),
                ColoredCircle(color: Colors.yellow),
                ColoredCircle(color: Colors.green),
                ColoredCircle(color: Colors.white),
                ColoredCircle(color: Colors.green),
                ColoredCircle(color: Colors.yellow),
                ColoredCircle(color: Colors.red),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: [
                    ColoredCircle(color: Colors.green),
                    ColoredCircle(color: Colors.yellow),
                    ColoredCircle(color: Colors.red),
                  ],
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}

class ColoredCircle extends StatelessWidget{

  const ColoredCircle({Key? key, required this.color}) : super(key: key);

  final Color color;
  final double width = 50;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width/2),
        color: color,
      ),
    );
  }
}
