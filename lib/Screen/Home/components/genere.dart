import 'package:flutter/material.dart';
import 'package:loginsignup2/components/genere_card.dart';
import 'package:loginsignup2/constants.dart';

class Generes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> generes = [
      "Action",
      "Crime",
      "Comedy",
      "Drama",
      "Horror",
      "Animation"
    ];
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 36.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: generes.length,
        itemBuilder: (BuildContext context, int index) {
        return GenereCard(genere: generes[index]);
       },
      ),
    );
  }
}