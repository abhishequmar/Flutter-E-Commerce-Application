import 'package:emart_app/consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ourButton({onPress, color, textColor, title}){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: EdgeInsets.all(12),

    ),
      onPressed: onPress,
      child: Text(title, style: TextStyle(fontFamily: bold, color: textColor),));
}