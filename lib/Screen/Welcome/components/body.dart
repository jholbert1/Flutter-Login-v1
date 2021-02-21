import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginsignup2/Screen/Login/login_screen.dart';
import 'package:loginsignup2/Screen/SingUp/singuo_screen.dart';
import 'package:loginsignup2/Screen/Welcome/components/background.dart';
import 'package:loginsignup2/components/rounded_button.dart';
import 'package:loginsignup2/constants.dart';
// import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //Obtener Dimensiones de la pantalla
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Welcome to APP",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          SvgPicture.asset(
            "assets/icons/chat.svg",
            height: size.height * 0.45,
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          RoundedButton(
            text: "Login",
            press: () => Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return LoginScreen();
            })),
          ),
          RoundedButton(
            text: "SignUp",
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: () {
              Navigator.push(context, 
                MaterialPageRoute(builder: (context) {
                  return SingUpScreen();
                })
              );
            },
          )
        ],
      ),
    ));
  }
}
