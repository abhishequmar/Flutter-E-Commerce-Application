import 'package:flutter/material.dart';
import 'package:emart_app/consts/consts.dart';

import '../../consts/lists.dart';
import '../../widgets_common/home_buttons.dart';
import 'components/featured_button.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 60,
              color: lightGrey,
              child: TextFormField(

                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchanything,
                  hintStyle: TextStyle(color: textfieldGrey),
                ),
              ),
            ),
            // swiper brands

            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    VxSwiper.builder(
                      aspectRatio: 16/9,
                        autoPlay: true,
                        height: 150,

                        enlargeCenterPage: true,
                        itemCount: slidersList.length,
                        itemBuilder:(context, index){
                      return Image.asset(slidersList[index], fit: BoxFit.fitWidth,).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                    }),
                    10.heightBox,

                    //deals button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:
                        List.generate(2, (index) => homeButtons(
                          height: context.screenHeight*0.15,
                          width: context.screenWidth/2.5,
                          icon: index ==0 ? icTodaysDeal : icFlashDeal,
                          title: index==0 ? todayDeal: flashSale,
                        )),

                    ),

                    10.heightBox,
                    //2nd swiper



                    VxSwiper.builder(
                        aspectRatio: 16/9,
                        autoPlay: true,
                        height: 150,

                        enlargeCenterPage: true,
                        itemCount: slidersList.length,
                        itemBuilder:(context, index){
                          return Image.asset(slidersList[index], fit: BoxFit.fitWidth,).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                        }),

                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:
                      List.generate(3, (index) => homeButtons(
                        height: context.screenHeight*0.15,
                        width: context.screenWidth/3.3,
                        icon: index ==0 ? icTopCategories : index ==1 ?icBrands : icTopSeller,
                        title: index ==0 ? topCategories : index ==1 ?brand : topSellers,
                      )),

                    ),

                    //featured categories
                    20.heightBox,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: featuredCategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make(),
                    ),
                    20.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(3, (index) => Column(
                          children: [
                            featuredButton(icon: featuredImages1[index], title: featuredTitles1[index]),
                            10.heightBox,
                            featuredButton(icon: featuredImages2[index], title: featuredTitles2[index]),

                          ],
                        ),
                        ).toList(),
                      ),
                    ),


                    // featured products

                    20.heightBox,
                    Container(
                      padding: EdgeInsets.all(12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: redColor,
                      ),
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          featuredProduct.text.white.fontFamily(bold).size(18).make(),
                          10.heightBox,
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(6, (index) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(imgP1, width: 150 , fit: BoxFit.cover,),
                                  10.heightBox,
                                  "Laptop 4GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                                  10.heightBox,
                                  "\$600".text.color(redColor).fontFamily(bold).make(),

                                ],
                              ).box.white.margin(EdgeInsets.symmetric(horizontal: 5)).rounded.padding(EdgeInsets.all(8)).make(),
                              ),
                            ),
                          ),


                        ],
                      )
                    ),
                    // third swiper
                    VxSwiper.builder(
                        aspectRatio: 16/9,
                        autoPlay: true,
                        height: 150,

                        enlargeCenterPage: true,
                        itemCount: slidersList.length,
                        itemBuilder:(context, index){
                          return Image.asset(slidersList[index], fit: BoxFit.fitWidth,).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                        }),
                    
                    20.heightBox,
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8, mainAxisExtent: 300), itemBuilder: (context,index ){
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(imgP5, width: 200 , height: 200, fit: BoxFit.cover,),
                          const Spacer(),
                          "Laptop 4GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                          10.heightBox,
                          "\$600".text.color(redColor).fontFamily(bold).make(),

                        ],
                      ).box.white.margin(EdgeInsets.symmetric(horizontal: 5)).rounded.padding(EdgeInsets.all(12)).make();
                    }
                    ),
                  ],
                ),
              ),
            )






          ],
        ),
      ),
    );
  }
}
