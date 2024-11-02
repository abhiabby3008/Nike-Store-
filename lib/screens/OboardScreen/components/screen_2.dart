import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../cons/img_cons.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 45.h, left: 30.w),
          child: Row(
            children: [
              Image.asset(
                smile,
                height: 50.h,
                width: 50.w,
              ),
            ],
          ),
        ),
        Image.asset(
          shoe_2,
          height: 339.98.h,
          width: 339.98.w,
        ),
        SizedBox(
          height: 20.h,
        ),
        Stack(
          children: [
            Image.asset(
              // scale: 0.1.sp,
              fit: BoxFit.none,
              nikelogo,
              height: 166.h,
              width: 482.w,
              opacity: const AlwaysStoppedAnimation(.10),
            ),
            Positioned(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "You Have the Power To",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 34.sp),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "There Are Many Beautiful And Attractive Plants To Your Room",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp),
                  )
                ],
              ),
            ))
          ],
        ),
      ],
    );
  }
}
