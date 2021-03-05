import 'package:flutter/material.dart';
import 'package:loginsignup2/components/genere_card.dart';
import 'package:loginsignup2/constants.dart';
import 'package:loginsignup2/models/movie.dart';

class Generes extends StatelessWidget {
  const Generes({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: SizedBox(
        height: 36.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie.genra.length,
          itemBuilder: (BuildContext context, int index) {
          return GenereCard(
            genere: movie.genra[index],
          );
         },
        ),
      ),
    );
  }
}