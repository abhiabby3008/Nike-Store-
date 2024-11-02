import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike/cons/clr_cons.dart';
import 'components/edit_profile_screen_body.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        actions: [
          Text(
            "Done",
            style: TextStyle(
                fontSize: 15.sp, fontWeight: FontWeight.w700, color: btncolor),
          ),
          SizedBox(
            width: 20.w,
          ),
        ],
      ),
      body: EditProfileBody(),
    );
  }
}
