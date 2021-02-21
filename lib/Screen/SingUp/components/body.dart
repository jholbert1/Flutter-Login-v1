import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginsignup2/Screen/Login/login_screen.dart';
import 'package:loginsignup2/Screen/SingUp/components/background.dart';
import 'package:loginsignup2/Screen/SingUp/components/or_divider.dart';
import 'package:loginsignup2/Screen/SingUp/components/social_iconst.dart';
import 'package:loginsignup2/components/already_have_account_choice.dart';
import 'package:loginsignup2/components/rounded_button.dart';
import 'package:loginsignup2/components/rounded_imput_field.dart';
import 'package:loginsignup2/components/rounded_password_changed.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "SINGUP",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              SvgPicture.asset(
                "assets/icons/signup.svg",
                height: size.height * 0.35,
              ),
              RoundedWidgetFiled(
                hintText: "Your Email",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              RoundedButton(text: "SINGUP", press: () {}),
              SizedBox(
                height: size.height * 0.02,
              ),
              AlreadyHaveAccountChoice(
                login: false,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                },
              ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialIcon(
                    iconSrc: "assets/icons/facebook.svg",
                    press: () {},
                  ),
                  SocialIcon(
                    iconSrc: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                  SocialIcon(
                    iconSrc: "assets/icons/google-plus.svg",
                    press: () {},
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
