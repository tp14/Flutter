import 'package:flutter/material.dart';
import 'package:hotel_hunter/Views/textWidgets.dart';

class ExplorePage extends StatefulWidget {

  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Explore Page'),
    );
  }
}
