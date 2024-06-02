import 'package:demo_application/consts/strings.dart';
import 'package:demo_application/views/home_screen/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:velocity_x/velocity_x.dart';

import '../../consts/colors.dart';
import '../../consts/utils.dart';

class verificationscreen extends StatelessWidget {
  const verificationscreen({Key? key}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: letsconnect.text.black.fontFamily(bold).make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Vx.gray400,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Vx.gray400,
                  ),
                ),
                prefixIcon: Icon(Icons.phone_android_rounded,
                color:Vx.gray600,
                ),

                alignLabelWithHint: true,
                labelText: "Phone Number",
                prefixText: "+91",
                hintText: "eg.1234567890",
                labelStyle: TextStyle(
                  color: Vx.gray600,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            10.heightBox,
            otp.text.semiBold.size(15).make(),
            const Spacer(),
            SizedBox(
              width: context.screenWidth-80,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: bgColor,
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.all(15)
                  ),
                  onPressed: (){
                    Get.to(()=> const HomeScreen(),transition: Transition.downToUp);
                  },
                  child: continuetext.text.semiBold.size(15).make()),
            ),
            30.heightBox,
          ],
        ),
      ),),);
  }
}
