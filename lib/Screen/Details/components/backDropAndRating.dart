import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loginsignup2/constants.dart';
import 'package:loginsignup2/models/movie.dart';

class BackDropAndRating extends StatelessWidget {
  const BackDropAndRating({
    Key key,
    @required this.size,
    @required this.movie,
  }) : super(key: key);

  final Size size;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: size.height * 0.4,
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height * 0.4 - 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0)
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(movie.backdrop)
                  )
                )
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 100,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50.0),
                      topLeft: Radius.circular(50.0),
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 50.0,
                        color: Color(0xFF12153D).withOpacity(0.2)
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset("assets/icons/star_fill.svg"),
                          SizedBox(height: kDefaultPadding / 4,),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                  text: "${movie.rating}",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                                TextSpan(
                                  text: "10\n"
                                ),
                                TextSpan(
                                  text: "150,212",
                                  style: TextStyle(color: kTextLightColor),
                                ),
                              ]
                            ),
                          )
                        ],
                      ),
                      // ***** RATING ******
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset("assets/icons/star.svg"),
                          SizedBox(height: kDefaultPadding / 4,),
                          Text(
                            "Rate This", 
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                      // *** META RATING ***
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(2)
                            ),
                            child: Text(
                              "${movie.metascoreRating}",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          SizedBox(height: kDefaultPadding / 4,),
                          Text(
                            "MetaScoring data", 
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          Text(
                            "62 critic review", 
                            style: TextStyle(
                              color: kTextLightColor
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SafeArea(child: BackButton(
                color: Colors.black,
              ),)
            ],
          ),
        )
      ],
    );
  }
}
