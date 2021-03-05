import 'package:flutter/material.dart';
import 'package:loginsignup2/constants.dart';
import 'package:loginsignup2/models/movie.dart';

class TitleDurationFabBtn extends StatelessWidget {
  const TitleDurationFabBtn({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${movie.title}",
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(width: kDefaultPadding / 2),
                Row(
                  children: <Widget>[
                    Text(
                      "${movie.year}",
                      style: TextStyle(color: kTextLightColor),
                    ),
                    SizedBox(width: kDefaultPadding),
                    Text(
                      "PG-13",
                      style: TextStyle(color: kTextLightColor),
                    ),
                    SizedBox(width: kDefaultPadding),
                    Text(
                      "2Hrs 32min",
                      style: TextStyle(color: kTextLightColor),
                    ),
                  ]
                )
              ]
            ),
          ),
          SizedBox(
            width: 64.0,
            height: 64.0,
            child: FlatButton(
              color: kSecondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)
              ),
              onPressed: () {},
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          )
        ]
      ),
    );
  }
}