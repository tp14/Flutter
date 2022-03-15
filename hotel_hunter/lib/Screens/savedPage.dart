import 'package:flutter/material.dart';
import 'package:hotel_hunter/Views/textWidgets.dart';

class SavedPage extends StatefulWidget {

  const SavedPage({Key? key}) : super(key: key);

  @override
  State<SavedPage> createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Saved Page'),
    );
  }
}
