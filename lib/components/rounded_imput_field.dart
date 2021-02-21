import 'package:flutter/material.dart';
import 'package:loginsignup2/components/login_field_container.dart';
import 'package:loginsignup2/constants.dart';

class RoundedWidgetFiled extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  
  const RoundedWidgetFiled({
    Key key, 
    this.hintText, 
    this.icon = Icons.person, 
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor
          ),
          hintText: hintText,
          border: InputBorder.none
        ),
      ),
    );
  }
}