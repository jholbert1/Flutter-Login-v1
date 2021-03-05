import 'package:flutter/material.dart';
import 'package:loginsignup2/Screen/Details/components/cast_and_crew.dart';
import 'package:loginsignup2/Screen/Details/components/genere.dart';
import 'package:loginsignup2/constants.dart';
import 'package:loginsignup2/models/movie.dart';
import 'package:loginsignup2/Screen/Details/components/backDropAndRating.dart';
import 'package:loginsignup2/Screen/Details/components/title_duration_fab_btn.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackDropAndRating(size: size, movie: movie),
          TitleDurationFabBtn(movie: movie),
          Generes(movie: movie),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2, 
              horizontal: kDefaultPadding
            ),
            child: Text(
              "Plot Summary",
              style: Theme.of(context).textTheme.headline5
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2, 
              horizontal: kDefaultPadding
            ),
            child: Text(
              "${movie.plot}",
              style: TextStyle(
                color: Color(0xFF737599)
              ),
            ),
          ),
          CastAndCrew(cast: movie.cast,)
        ],
      ),
    );
  }
}



