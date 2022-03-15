import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'image_card.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{

  List<String> vehicleNames = [
    'bicycle',
    'boat',
    'car',
    'excavator',
    'helicopter',
    'motorbike',
    'plane',
    'tractor',
    'train',
    'truck'
  ];

  String currentVehicleName = '';

  double scrollPercent = 0.0;
  late Offset startDrag;
  late double startDragPercentScroll;
  late double finishScrollStart;
  late double finishScrollEnd;
  late AnimationController finishScrollController;

  @override
  initState(){
    super.initState();

    finishScrollController = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    )
    ..addListener(() {
      setState(() {
        scrollPercent = lerpDouble(finishScrollStart, finishScrollEnd, finishScrollController.value)!; // null check adicionado aq tb? Provavelmente atualização
      });
    });
  }

  @override
  dispose(){
    finishScrollController.dispose();
    super.dispose();
  }

  List<Widget> buildCards(){
    List<Widget> cardsList = [];
    for (int i = 0; i < vehicleNames.length; i++){
      cardsList.add(buildCard(i, scrollPercent));
    }
    return cardsList;
  }

  Widget buildCard(int cardIndex, double scrollPercent){
    final cardScrollPercent = scrollPercent / (1 / vehicleNames.length);

    return FractionalTranslation(
      translation: Offset(cardIndex - cardScrollPercent, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ImageCard(imageName: vehicleNames[cardIndex]),
      )
    );
  }

  onHorizontalDragStart(DragStartDetails details){
    startDrag = details.globalPosition;
    startDragPercentScroll = scrollPercent;
  }

  onHorizontalDragUpdate(DragUpdateDetails details){
    final currentDrag = details.globalPosition;
    final dragDistance = currentDrag.dx - startDrag.dx;
                                                              //adicionou a negação, não sei pq, provavelmente atualização
    final singleCardDragPercent = dragDistance / context.size!.width;

    setState((){
      scrollPercent = (startDragPercentScroll + (-singleCardDragPercent) / vehicleNames.length).clamp(0.0, 1.0 - (1 / vehicleNames.length));
    });
  }

  onHorizontalDragEnd(DragEndDetails details){
    finishScrollStart = scrollPercent;
    finishScrollEnd = (scrollPercent * vehicleNames.length).round() / vehicleNames.length;
    finishScrollController.forward(from: 0.0);

    setState((){
      //ver se da assim, deu, usar o late, algo novo? Provavelmente
      startDrag;
      startDragPercentScroll;
      currentVehicleName = '';
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              onHorizontalDragStart: onHorizontalDragStart,
              onHorizontalDragUpdate: onHorizontalDragUpdate,
              onHorizontalDragEnd: onHorizontalDragEnd,
              behavior: HitTestBehavior.translucent,
              child: Stack(
                  children: buildCards(),
              ),
            ),
                OutlineButton(
                  padding: const EdgeInsets.all(10.0),
                  onPressed: () {
                    setState(() {
                      currentVehicleName = vehicleNames[(scrollPercent * 10).round()];
                    });
                  },
                  child: const Text(
                    'Show Answer',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 4.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  highlightedBorderColor: Colors.black,
                ),
                 Text(
                    currentVehicleName,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      letterSpacing: 2,
                    ),
                ),
          ],
        ),
      ),
    );
  }
}
