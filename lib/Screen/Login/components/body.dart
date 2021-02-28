import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loginsignup2/Screen/Home/home_screen.dart';
import 'package:loginsignup2/Screen/Login/components/background.dart';
import 'package:loginsignup2/Screen/SingUp/singuo_screen.dart';
import 'package:loginsignup2/components/already_have_account_choice.dart';
import 'package:loginsignup2/components/login_field_container.dart';
import 'package:loginsignup2/components/rounded_button.dart';
import 'package:loginsignup2/components/rounded_imput_field.dart';
import 'package:loginsignup2/components/rounded_password_changed.dart';
import 'package:loginsignup2/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Login",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.width * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              width: size.width * 0.6,
            ),
            SizedBox(height: size.width * 0.03),
            RoundedWidgetFiled(
              hintText: "Your Emial",
              onChanged: (value) {},
            ),
            RoundedPasswordField(onChanged: (value) {}),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomeScreen(); 
                    }
                  )
                );
              },
            ),
            SizedBox(height: size.width * 0.03),
            AlreadyHaveAccountChoice(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SingUpScreen(); 
                    }
                  )
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

