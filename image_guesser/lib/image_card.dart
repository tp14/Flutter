import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {

  final String imageName;

  const ImageCard({Key? key, required this.imageName}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Colors.black,
          width: 4.0,
        )
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.asset(
          'assets/images/$imageName.jpeg',
          height: 300,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}