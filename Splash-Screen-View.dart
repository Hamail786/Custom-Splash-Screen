import 'dart:ui';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:foodrecipeapp/Modules/Auth-Module/View/SignIn-View.dart';
import 'package:foodrecipeapp/Utils/App-Button/App-Button-Widget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Utils/App-Theme/App-Color.dart';
import '../../../Utils/App-Theme/App-Config.dart';
import '../../../Utils/App-Theme/App-Text.dart';
import 'Components/BackgroundImage-SplashScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: Stack(
        children: [
          BackgroundImage(),
          Positioned(
            top: 108,
            left: 148,
            right: 148,
            child: SizedBox(
              height: 79,
              width: 79,
              child: Image(
                image: AssetImage('assets/img/hat.png'),
              )
            ),
          ),
          Positioned(
              top: 197,
              left: 86,
              right: 83,
              child: CusText('100K+ Premium Recipe ', AppColor.whiteClr, FontWeight.w600,18)),
          Positioned(
              top: 446,
              left: 81,
              right: 81,
              child: SizedBox(
            height: 150,
            width: 213,
            child: Center(
              child: Column(
         children:[
              CusText('Get', AppColor.whiteClr, FontWeight.w600, 50),
             CusText('Cooking', AppColor.whiteClr, FontWeight.w600, 50),
              ]
              )
            ),
          )),
          Positioned(
              top:586,
              left: 50,
              right: 50,
              child: Center(child: CusText('Simple way to find Tasty Recipe', AppColor.whiteClr, FontWeight.w400, 16))),
          
             Positioned(
                 top:674,
                 left: 66,
                 right: 66,
                 child: InkWell(
                     onTap: (){
                       Get.to(SignIn());
                     },
                     child: AppButton('Start Cooking', AppColor.Primary100,243, 60)))
        ],
       ),
     )
    );
  }
}
