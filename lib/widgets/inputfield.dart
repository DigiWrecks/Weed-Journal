import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class InputField extends StatelessWidget {

  final String hint;
  final TextInputType type;
  final bool ispassword;
  final TextEditingController controller;

  InputField({Key key, this.hint, this.type, this.ispassword=false, this.controller}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
      fontWeight: FontWeight.bold,
      color: Theme.of(context).accentColor,
    );
    return Padding(
      padding:  EdgeInsets.only(top: 20),
      child: TextField(
        style: textStyle,
        cursorColor: Colors.white,
        keyboardType: type,
        controller: controller,
        obscureText: ispassword,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: textStyle,
          enabledBorder:UnderlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).accentColor, width: 2),
          ),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).accentColor, width: 5),
          ),

        ),
      ),
    );
  }
}