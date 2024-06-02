import 'package:demo_application/consts/colors.dart';
import 'package:demo_application/views/home_screen/components/drawer.dart';
import 'package:demo_application/views/home_screen/components/tabbar.dart';
import 'package:demo_application/views/home_screen/components/tabbarview.dart';
import 'package:flutter/material.dart';
import 'components/appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});



  @override
  Widget build(BuildContext context) {

    final scaffoldKey = GlobalKey<ScaffoldState>();

    return SafeArea(
        child:DefaultTabController(
          length: 3,
          child: Scaffold(
          key: scaffoldKey,
          drawer: drawer(),
          floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: (){},
          child: const Icon(Icons.add),
        ),
          backgroundColor: Colors.black,
        body: Column(
          children: [
            appbar(scaffoldKey),
            tabbar(),
            tabbarview(),

          ],
        ),
      ),),);
  }
}
