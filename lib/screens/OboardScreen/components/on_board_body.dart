import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike/cons/clr_cons.dart';
import 'package:nike/screens/OboardScreen/components/screen1.dart';
import 'package:nike/screens/OboardScreen/components/screen_2.dart';
import 'package:nike/screens/SignInScreen/sign_in.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardBody extends StatefulWidget {
  const OnBoardBody({super.key});

  @override
  State<OnBoardBody> createState() => _OnBoardBodyState();
}

class _OnBoardBodyState extends State<OnBoardBody> {
  final PageController _controller = PageController(initialPage: 0);
  final List<Widget> _onboardingPages = [const Screen1(), const Screen2()];
  final List<dynamic> Onboard_buttons = ["Get Started", "Next", "Sign Up"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgcolor,
        body: Padding(
          padding: EdgeInsets.only(bottom: 20.h),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: PageView(
                  controller: _controller,
                  children: _onboardingPages,
                ),
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 2,
                effect: ExpandingDotsEffect(
                  dotWidth: 28.w,
                  dotHeight: 10.h,
                  activeDotColor: Colors.white,
                  dotColor: dotclr,
                ),
                onDotClicked: (index) {
                  _controller.animateToPage(
                    index,
                    duration: Durations.long1,
                    curve: Curves.linear,
                  );
                },
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13.sp)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const SignIn()));
                    },
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
