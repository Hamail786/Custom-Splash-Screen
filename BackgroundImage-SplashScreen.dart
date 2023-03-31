

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foodrecipeapp/Utils/App-Theme/App-Color.dart';
import 'package:foodrecipeapp/Utils/App-Theme/App-Config.dart';
class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ShaderMask(
         shaderCallback: (bounds)=>LinearGradient(colors: [Colors.black,Colors.black12],
         begin: Alignment.bottomCenter,
           end: Alignment.center,
         ).createShader(bounds),blendMode: BlendMode.darken,
         child: Container(
           height: MediaQuery.of(context).size.height,
           width: MediaQuery.of(context).size.width,
           decoration: BoxDecoration(
               image: DecorationImage(
                 image: AssetImage('assets/img/splash.jpg',),
                 fit: BoxFit.cover,
                 colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
               )
           ),
         ),
       );
  }
}
