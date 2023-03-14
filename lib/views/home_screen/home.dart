import 'package:emart_app/views/category_screen/category_screen.dart';
import 'package:flutter/material.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controllers/home_controller.dart';
import '../cart_screen/cart_screen.dart';
import '../profile_screen/profile_screen.dart';
import 'home_screen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //initializing home Controller
    var controller = Get.put(HomeController());
    var navBarItem=[
      BottomNavigationBarItem(icon: Image.asset(icHome, width: 26,), label: home),
      BottomNavigationBarItem(icon: Image.asset(icCategories, width: 26,), label: categories),
      BottomNavigationBarItem(icon: Image.asset(icCart, width: 26,), label: cart),
      BottomNavigationBarItem(icon: Image.asset(icProfile, width: 26,), label: account),

    ];
    var navBody=[
      HomeScreen(),
      CategoryScreen(),
      CartScreen(),
      ProfileScreen(),

    ];
    return Scaffold(
      body: Column(
        children: [
          Obx(()=>
         Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value),
            ),
          ),

        ],
      ),

      bottomNavigationBar: Obx(()=>
        BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
            items:navBarItem,
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: redColor,
          selectedLabelStyle: TextStyle(fontFamily: semibold ),
          onTap: (value){
            controller.currentNavIndex.value=value;
          },
        ),
      ),
    );
  }
}
