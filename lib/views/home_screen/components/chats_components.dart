import 'package:demo_application/consts/colors.dart';
import 'package:demo_application/consts/images.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
Widget Chats_Components(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 6),
    child: ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 20,
      itemBuilder:(BuildContext context , int index){
    return ListTile(
    leading: CircleAvatar(
        radius: 25,
        backgroundColor: bgColor,
        child: Image.asset(ic_user, color: Colors.white),
      ),
      title: "Dummy Name".text.size(16).semiBold.make(),
      subtitle: "Message here..".text.make(),
      trailing: "Last Seen".text.gray500.make(),
    );
    },
    ),
  );
}