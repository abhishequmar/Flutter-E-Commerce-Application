
import 'package:emart_app/consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/material/scaffold.dart';

Widget bgWidget(Scaffold scaffold){
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(imgBackground), fit: BoxFit.fill)
    ),
    child: scaffold,

  );
}