import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike/cons/clr_cons.dart';
import 'package:nike/cons/img_cons.dart';
import 'package:nike/global/global_button.dart';
import 'package:nike/screens/EditProfileScreen/edit_profile_screen.dart';
import 'package:nike/screens/HomeScreen/home_screen.dart';

class ProfileScreenBody extends StatefulWidget {
  const ProfileScreenBody({super.key});

  @override
  State<ProfileScreenBody> createState() => _ProfileScreenBodyState();
}

bool _ison = false;

class _ProfileScreenBodyState extends State<ProfileScreenBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EditProfile()));
              },
              child: Center(
                child: Stack(
                  children: [
                    Image.asset(
                      profile_img,
                      scale: 4,
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          decoration: const BoxDecoration(
                              color: btncolor, shape: BoxShape.circle),
                          child: const Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Icon(
                              Icons.edit_outlined,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              "Your name",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                  color: Colors.grey[600]),
            ),
            SizedBox(
              height: 15.h,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "EMMANUEL OYIBOKE",
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: txtfeildtxtcolor),
                      borderRadius: BorderRadius.circular(
                        14.r,
                      ))),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Email Address",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                  color: Colors.grey[600]),
            ),
            SizedBox(
              height: 15.h,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "emmanueloyiboke@gmail.com",
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: txtfeildtxtcolor),
                      borderRadius: BorderRadius.circular(
                        14.r,
                      ))),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Password",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 12.h,
            ),
            TextField(
              obscureText: _ison ? false : true,
              decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _ison = !_ison;
                        });
                      },
                      child: _ison
                          ? const Icon(CupertinoIcons.eye_fill)
                          : const Icon(CupertinoIcons.eye_slash)),
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: txtfeildtxtcolor),
                      borderRadius: BorderRadius.circular(
                        14.r,
                      ))),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Recovery Password",
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 12.sp),
                )
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            GlobalButton(
              text: "Save Now",
              width: double.infinity,
              navigation: HomeScreen(),
            )
          ],
        ),
      ),
    );
  }
}
