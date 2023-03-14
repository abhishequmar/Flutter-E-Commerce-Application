import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final String? title;

  const ItemDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        // to set appbar icons color
        iconTheme: IconThemeData(
          color: darkFontGrey,
        ),
        title: title!.text. color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(
            icon: Icon(Icons.share,color: darkFontGrey,),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.favorite_outline, color: darkFontGrey,),
            onPressed: (){},
          ),

        ],

      ),
      body:Container(),
    );
  }
}
