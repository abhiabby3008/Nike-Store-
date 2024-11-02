import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike/cons/clr_cons.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({
    super.key,
    this.text,
    this.height,
    this.navigation,
    this.width,
  });

  final text;
  final height;
  final navigation;
  final width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50.h,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: btncolor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r))),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => navigation));
        },
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 14.sp),
        ),
      ),
    );
  }
}
