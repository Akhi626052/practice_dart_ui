import "package:flutter/material.dart";

TextStyle mTextStyle({Color textColor = Colors.yellow, FontWeight fontWeight = FontWeight.normal}){
  return TextStyle(
    fontSize: 31,
    fontWeight: fontWeight,
    color: textColor
  );
}

TextStyle mTextStyle11(){
  return TextStyle(
      fontSize: 31,
      fontWeight: FontWeight.bold,
      color: Colors.greenAccent
  );
}