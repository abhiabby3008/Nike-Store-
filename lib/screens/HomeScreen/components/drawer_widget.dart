import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike/screens/FavScreen/fav_screen.dart';
import 'package:nike/screens/MyCartScreen/mycart_screen.dart';
import 'package:nike/screens/ProfileScreen/profile_screen.dart';

import '../../../cons/clr_cons.dart';
import '../../../cons/img_cons.dart';

class DrawerWidet extends StatelessWidget {
  const DrawerWidet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: bgcolor,
      width: 300.w,
      child: Padding(
        padding: EdgeInsets.only(left: 35.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60.h,
            ),
            Image.asset(
              profile_img,
              scale: 3,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Emmanuel Oyiboke",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: Colors.white),
            ),
            SizedBox(
              height: 30.h,
            ),
            MenuWidget(
              text: "Profile",
              navigation: ProfileScreen(),
              icon: Icons.person_2_outlined,
            ),
            SizedBox(
              height: 30.h,
            ),
            MenuWidget(
              navigation: MyCartScreen(),
              text: "My Cart",
              icon: Icons.shopping_cart_outlined,
            ),
            SizedBox(
              height: 30.h,
            ),
            MenuWidget(
              navigation: FavScreen(),
              text: "Favourite",
              icon: Icons.favorite_outline,
            ),
            SizedBox(
              height: 30.h,
            ),
            MenuWidget(
                navigation: MyCartScreen(),
                text: "Orders",
                icon: Icons.history_outlined),
            SizedBox(
              height: 30.h,
            ),
            const MenuWidget(
              text: "Notifications",
              icon: Icons.notifications_none_outlined,
            ),
            SizedBox(
              height: 30.h,
            ),
            const MenuWidget(
              text: "Settings",
              icon: Icons.settings_outlined,
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 35.w),
              child: const Divider(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            const MenuWidget(
              text: "Sign Out",
              icon: Icons.logout_outlined,
            ),
          ],
        ),
      ),
    );
  }
}

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    super.key,
    this.text,
    this.icon,
    this.navigation,
  });
  final text;
  final icon;
  final navigation;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => navigation));
      },
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
        ],
      ),
    );
  }
}
