import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:emart_app/consts/consts.dart';

import 'category_details.dart';
class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        Scaffold(
        appBar: AppBar(title: categories.text.fontFamily(bold).white.make(),),
        body: Container(
          padding: EdgeInsets.all(12),
          child: GridView.builder(
            shrinkWrap: true,
              itemCount:9,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 8, crossAxisSpacing: 8, mainAxisExtent: 200), itemBuilder: (context, index){

            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                 CategoryDetails(title: categoriesList[index]),));
              },
              child: Column(

                children: [
                  Image.asset(categoryImagesList[index],
                    height: 120,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  10.heightBox,
                  categoriesList[index].text.color(darkFontGrey).align(TextAlign.center).make(),
                ],
              ).box.white.rounded.clip(Clip.antiAlias).outerShadowSm.make(),
            );
          }),
        ),
      ),
    );
  }
}
