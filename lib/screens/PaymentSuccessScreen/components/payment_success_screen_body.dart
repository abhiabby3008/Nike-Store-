import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike/cons/clr_cons.dart';
import 'package:nike/cons/img_cons.dart';
import 'package:nike/global/global_button.dart';
import 'package:nike/screens/CheckoutScreen/components/check_out_body.dart';
import 'package:nike/screens/HomeScreen/home_screen.dart';

class PaymentSuccessBody extends StatelessWidget {
  const PaymentSuccessBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Stack(
        children: [
          const CheckOutBody(),
          Positioned(
            top: 200.h,
            right: 30.w,
            left: 30.w,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 60.w, vertical: 40.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: celeb_bg_clr),
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Image.asset(
                              celebration,
                              scale: 4,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          textAlign: TextAlign.center,
                          "Your Payment Is Successful",
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 20.h),
                        const GlobalButton(
                          navigation: HomeScreen(),
                          text: "Back to Shopping",
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      )
    ]));
  }
}
