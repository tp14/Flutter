import 'package:flutter/material.dart';
import 'package:hotel_hunter/Views/textWidgets.dart';

class InboxPage extends StatefulWidget {

  const InboxPage({Key? key}) : super(key: key);

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Inbox Page'),
    );
  }
}
