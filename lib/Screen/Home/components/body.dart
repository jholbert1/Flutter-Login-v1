import 'package:flutter/material.dart';
import 'package:loginsignup2/Screen/Home/components/categories.dart';
import 'package:loginsignup2/Screen/Home/components/genere.dart';
import 'package:loginsignup2/Screen/Home/components/movie_carousel.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[CategoryList(), Generes(), MovieCarousel()],
    );
  }
}

