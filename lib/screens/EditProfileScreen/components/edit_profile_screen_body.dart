import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike/cons/clr_cons.dart';
import 'package:nike/cons/img_cons.dart';
import 'package:nike/screens/EditProfileScreen/components/text_field_name.dart';
import 'package:nike/screens/EditProfileScreen/components/text_filed.dart';

class EditProfileBody extends StatelessWidget {
  const EditProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 30.h,
        ),
        Center(
          child: Image.asset(
            profile_img,
            scale: 3,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Center(
          child: Text(
            textAlign: TextAlign.center,
            "Emmanuel Oyiboke",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.sp),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Center(
          child: Text(
            textAlign: TextAlign.center,
            "Change Profile Picture",
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 12.sp, color: btncolor),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        const textfieldname(
          name: "First Name",
        ),
        SizedBox(
          height: 15.h,
        ),
        const textfield(
          text: "Emmanuel",
        ),
        SizedBox(
          height: 15.h,
        ),
        const textfieldname(
          name: "Last Name",
        ),
        SizedBox(
          height: 15.h,
        ),
        const textfield(
          text: "Oyiboke",
        ),
        SizedBox(
          height: 15.h,
        ),
        const textfieldname(
          name: "Location",
        ),
        SizedBox(
          height: 15.h,
        ),
        const textfield(
          text: "Nigeria",
        ),
        SizedBox(
          height: 15.h,
        ),
        const textfieldname(
          name: "Mobile Number",
        ),
        SizedBox(
          height: 15.h,
        ),
        const textfield(
          text: "811-732-5298",
        ),
      ]),
    ));
  }
}
