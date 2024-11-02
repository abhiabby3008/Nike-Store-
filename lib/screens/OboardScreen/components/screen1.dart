import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike/cons/img_cons.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Welcome to Nike",
          style: TextStyle(
              color: Colors.white,
              fontSize: 30.sp,
              fontWeight: FontWeight.w900),
        ),
        SizedBox(
          height: 10.h,
        ),
        Image.asset(
          spring,
          height: 18.h,
          width: 134.w,
        ),
        SizedBox(
          height: 20.h,
        ),
        Image.asset(
          shoe_1,
          height: 339.98.h,
          width: 339.98.w,
        ),
        SizedBox(
          height: 20.h,
        ),
        Stack(
          children: [
            Image.asset(
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
                    "Let’s Start Journey With Nike",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 34.sp),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Smart, Gorgeous & Fashionable Collection Explore Now",
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
