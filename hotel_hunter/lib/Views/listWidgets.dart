import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:hotel_hunter/Models/appConstants.dart';

class ReviewListTile extends StatefulWidget {

  ReviewListTile({Key? key}): super(key: key);

  @override
  _ReviewListTileState createState() => _ReviewListTileState();


}

class _ReviewListTileState extends State<ReviewListTile>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/usuario.png'),
              radius: MediaQuery.of(context).size.width / 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: AutoSizeText(
                'Nimish',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            StarRating(
              size: 25.0,
              starCount: 5,
              color: AppConstants.selectedIconColor,
              borderColor: Colors.grey,
              onRatingChanged: null,
              rating: 4.5,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
          child: AutoSizeText(
            'Great guy, really enjoyed his stay at this place, would definitely recommend him to other people.',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ),
      ],
    );
  }

}