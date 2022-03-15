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
  final textController = TextEditingController();

  pressButton(){
    setState((){
      displayText = textController.text.toString();
    });
  }

  @override
  void dispose(){
    textController.dispose();
    super.dispose();
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
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter text here'
                ),
                textAlign:  TextAlign.center,
                textCapitalization: TextCapitalization.characters,
                textInputAction: TextInputAction.send,
                keyboardType: TextInputType.number,
                controller: textController,
               //  onSubmitted: (text){
               //   setState(() {
               //    displayText = text;
               //   });
               // },
              //   onChanged: (text){
              //     setState(() {
              //       displayText = text;
              //     });
              //   },
              ),
              MaterialButton(
                onPressed: () => pressButton(),
                child: Text('Press me'),
              ),
              Text(displayText),
            ],
          )
      ),
    );
  }
}
