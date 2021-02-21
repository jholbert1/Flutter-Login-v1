import 'package:flutter/material.dart';
import 'package:loginsignup2/constants.dart';

class AlreadyHaveAccountChoice extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAccountChoice({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Dont Have an account ?" : "Already have an account",
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? " Sing Up" : "Sing In",
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
