import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiffShoes_widget extends StatelessWidget {
  const DiffShoes_widget({
    super.key,
    this.image,
  });

  final image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r), color: Colors.white),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            image,
            scale: 4.sp,
          ),
        ),
      ),
    );
  }
}
