import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/views/auth_screen/login_screen.dart';
import 'package:flutter/material.dart';

import '../../consts/colors.dart';
import '../../widgets_common/applogo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  //method to change screen
  changeScreen(){
    Future.delayed(Duration(seconds: 3),(){

      Navigator.push(context, MaterialPageRoute(builder: (context) =>
      const LoginScreen(),));

    });
  }
  @override
  void initState(){
    changeScreen();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(alignment: Alignment.topLeft,child: Image.asset(icSplashBg, width:300)),
            20.heightBox,
            applogoWidget(),
            10.heightBox,
            appname.text.fontFamily(semibold).size(22).white.make(),
            5.heightBox,
            appversion.text.white.make(),
            Spacer(),
            credits.text.make(),
            30.heightBox,

          ],

        ),
      )


    );
  }
}
