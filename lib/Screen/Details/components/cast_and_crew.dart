import 'package:flutter/material.dart';
import 'package:loginsignup2/Screen/Details/components/cast_card.dart';
import 'package:loginsignup2/constants.dart';

class CastAndCrew extends StatelessWidget {
  final List cast;

  const CastAndCrew({Key key, this.cast}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: kDefaultPadding / 2),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cast.length,
              itemBuilder: (context, index) => CastCard(cast: cast[index],),
            ),
          ),
        ],
      ),
    );
  }
}