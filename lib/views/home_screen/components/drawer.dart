import 'package:demo_application/consts/consts.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

Widget drawer(){
  return  Drawer(
    backgroundColor:bgColor,
    shape:const RoundedRectangleBorder(
      borderRadius: BorderRadius.horizontal(right: Radius.circular(25)),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal:12.0, vertical: 8),
      child: Column(
        children: [
          ListTile(
            leading: const Icon(
              backIcon,
              color: Colors.white,
            ).onTap(() {
              Get.back();
            }),
            title: settings.text.fontFamily(semibold).white.make(),
          ),
          20.heightBox,
          CircleAvatar(
            radius: 45,
            backgroundColor: Colors.black,
            child:Image.asset(
                ic_user,
                color: Colors.white,
            ),
          ),
          10.heightBox,
          username.text.white.fontFamily(semibold).size(15).make(),
          10.heightBox,
          const Divider(
              color:Colors.black,
              height: 1,
          ),
          10.heightBox,
          ListView(
            shrinkWrap: true,
            children:List.generate
              (drawerIconsList.length,
                    (index) => ListTile(
                      onTap: () {},
              leading: Icon(drawerIconsList[index],color: Colors.white,),
              title: drawerListTitles[index].text.fontFamily(semibold).white.make(),
            )),
          ),
          10.heightBox,
          const Divider(
          color:Colors.black,
          height: 1),
          10.heightBox,
          ListTile(
            leading: const Icon(inviteIcon, color: Colors.white,),
            title: invite.text.fontFamily(semibold).white.make(),
          ),
          Spacer(),
          ListTile(
            leading: Icon(logoutIcon,color: Colors.white,),
            title: logout.text.fontFamily(semibold).white.make(),
          ),
        ],
  ),
    ),);
}