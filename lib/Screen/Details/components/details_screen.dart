import 'package:flutter/material.dart';
import 'package:loginsignup2/Screen/Details/components/body.dart';
import 'package:loginsignup2/models/movie.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;

  const DetailsScreen({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(movie: movie),
    );
  }
}