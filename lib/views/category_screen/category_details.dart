import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'item_details.dart';

class CategoryDetails extends StatelessWidget {
 final String? title;
  const CategoryDetails({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      Scaffold(
        appBar: AppBar(
          title: title!.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(6, (index) => "Baby Clothing".text.fontFamily(semibold).color(darkFontGrey).make().box.white.size(120, 40).margin(EdgeInsets.symmetric(horizontal: 10)).rounded.alignCenter.make()),
                ),
              ),
              20.heightBox,


              // Items container
              Expanded(
                child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 300, mainAxisSpacing: 8, crossAxisSpacing: 8), itemBuilder: (context, index){
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(imgP5, width: 200 , height: 200, fit: BoxFit.cover,),
                      const Spacer(),
                      "Laptop 4GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                      10.heightBox,
                      "\$600".text.color(redColor).fontFamily(bold).make(),

                    ],
                  ).box.white.margin(EdgeInsets.symmetric(horizontal: 5))
                      .roundedSM.padding(EdgeInsets.all(12)).outerShadowSm
                      .make().onTap(() {
                        Get.to(()=> ItemDetails(title: 'Dummy item',));
                  });
                })
              ),

            ],
          ),
        ),
      ),
    );
  }
}
