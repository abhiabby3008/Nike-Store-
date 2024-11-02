import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class textfieldname extends StatelessWidget {
  const textfieldname({
    super.key, this.name,
  });

  final name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
    );
  }
}
