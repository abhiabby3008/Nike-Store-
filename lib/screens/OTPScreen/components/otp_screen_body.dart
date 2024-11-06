import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike/cons/clr_cons.dart';
import 'package:nike/global/global_button.dart';
import 'package:nike/screens/HomeScreen/home_screen.dart';

class OTPScreenBody extends StatefulWidget {
  const OTPScreenBody({super.key});

  @override
  State<OTPScreenBody> createState() => _OTPScreenBodyState();
}

class _OTPScreenBodyState extends State<OTPScreenBody> {
  int _start = 30; // Timer duration (seconds)
  Timer? _timer;

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_start > 0) {
        setState(() {
          _start--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "OTP Verification",
                style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              "Please check your email to see the verification code",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "OTP Code",
              style: TextStyle(fontSize: 21.sp, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20.h,
            ),
            OtpTextField(
              borderRadius: BorderRadius.circular(12.r),
              showFieldAsBox: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 18.w),
              fieldWidth: 75.w,
              fieldHeight: 70.h,
              numberOfFields: 4,
            ),
            const GlobalButton(
              navigation: HomeScreen(),
              text: "Verify",
              width: double.infinity,
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    startTimer();
                  },
                  child: Text(
                    "Resend Code",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: txtfeildtxtcolor),
                  ),
                ),
                const Spacer(),
                Text(
                  "00:$_start",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: txtfeildtxtcolor),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
