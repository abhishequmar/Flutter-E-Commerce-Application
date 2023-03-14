import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/views/auth_screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../consts/lists.dart';
import '../../widgets_common/applogo_widget.dart';
import '../../widgets_common/bg_widget.dart';
import '../../widgets_common/custom_textfield.dart';
import '../../widgets_common/our_button.dart';
import '../home_screen/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
     Scaffold(
       resizeToAvoidBottomInset: false,
       body: Center(
         child: Column(
           children: [
             (context.screenHeight*0.1).heightBox,
             applogoWidget(),
             15.heightBox,
             "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
             10.heightBox,
             Column(
               children: [
                 customTextField(hint: emailHint, title: email ),
                 customTextField(hint : passwordHint, title: password),
                 Align(
                   alignment: Alignment.centerRight,
                   child: TextButton(
                       onPressed: (){},
                       child: forgotPassword.text.make(),
                   ),
                 ),
                 5.heightBox,
                 ourButton(color: redColor, title: login, textColor: whiteColor, onPress: (){
                   Get.to(Home());
                 } ).box.width(context.screenWidth - 50).make(),
                 createNewAccount.text.color(fontGrey).make(),
                 5.heightBox,
                 ourButton(color: lightGolden, title: signup, textColor: redColor, onPress: (){
                   Get.to(()=>SignupScreen());
                 } ).box.width(context.screenWidth - 50).make(),
                 10.heightBox,
                 loginiwth.text.color(fontGrey).make(),
                 5.heightBox,
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: List.generate(3, (index) => Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: CircleAvatar(
                       backgroundColor: lightGrey,
                       radius: 25,
                       child: Image.asset(socialIconList[index], width: 30,),

                     ),
                   ))
                 )


               ],
             ).box.white.rounded.padding( EdgeInsets.all(16)).width(context.screenWidth-70).shadowSm.make(),
             
           ],
         )
       ),
     ),
    );
  }
}

