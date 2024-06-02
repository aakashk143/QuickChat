import 'package:demo_application/consts/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../consts/images.dart';
import '../../../consts/strings.dart';
import '../../../consts/utils.dart';
    Widget appbar(GlobalKey<ScaffoldState> key){
  return Container(
    padding: const EdgeInsets.only(right:12),
    height:100,
    color:Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap:(){

            key.currentState!.openDrawer();
          },
          child: Container(
            decoration: const BoxDecoration(
              color:bgColor,
              borderRadius: BorderRadius.only(topRight: Radius.circular(100),bottomRight: Radius.circular(100),),
            ),
            height: 100,
            width: 100,
            child: const Icon(settingsIcon,
              color: Colors.white,
            ),
          ),
        ),
        RichText(text: TextSpan(
          children: [
            TextSpan(text: "$appname\n",style: TextStyle(fontFamily: bold,fontSize: 22,color: Colors.black,)),
            TextSpan(text: "               ConnectingLives...",style: TextStyle(fontFamily: "mont_light",fontSize: 16,color: Colors.grey,)),
          ]
        )),
        CircleAvatar(
          backgroundColor: bgColor,
          radius: 20,
          child: Image.asset(ic_user,color: Colors.white,),
        ),
      ],
    ),
  );
    }