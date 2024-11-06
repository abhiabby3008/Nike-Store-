import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike/cons/clr_cons.dart';
import 'package:nike/global/global_button.dart';
import 'package:nike/cons/img_cons.dart';
import 'package:nike/screens/OTPScreen/otp_screen.dart';
import 'package:nike/screens/SignInScreen/sign_in.dart';

class RegisterScreenBody extends StatefulWidget {
  const RegisterScreenBody({super.key});

  @override
  State<RegisterScreenBody> createState() => _RegisterScreenBodyState();
}

bool _ison = false;

class _RegisterScreenBodyState extends State<RegisterScreenBody> {
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
                "Register Account",
                style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              "Fill your details or continue with social media",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              "Your Name",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 12.h,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "xxxxxxxx",
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: txtfeildtxtcolor),
                      borderRadius: BorderRadius.circular(
                        14.r,
                      ))),
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              "Email Address",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 12.h,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "xyz@gmail.com",
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: txtfeildtxtcolor),
                      borderRadius: BorderRadius.circular(
                        14.r,
                      ))),
            ),
            SizedBox(
              height: 12.h,
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
              height: 12.h,
            ),
            const GlobalButton(
              navigation: OTPScreen(),
              text: "Sign In",
              width: double.infinity,
            ),
            SizedBox(
              height: 24.h,
            ),
            SizedBox(
              height: 50.h,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r))),
                  onPressed: () {},
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        google,
                        scale: 4,
                      ),
                      SizedBox(width: 10.w),
                      Text(
                        "Sign In With Google",
                        style: TextStyle(color: Colors.black, fontSize: 14.sp),
                      ),
                    ],
                  ))),
            ),
            SizedBox(
              height: 140.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already Have Account?",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const SignIn()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: btncolor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
