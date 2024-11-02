import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../cons/clr_cons.dart';

class textfield extends StatelessWidget {
  const textfield({
    super.key,
    this.text,
  });

  final text;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: text,
          suffixIcon: const Icon(Icons.check),
          suffixIconColor: btncolor,
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: txtfeildtxtcolor),
              borderRadius: BorderRadius.circular(
                14.r,
              ))),
    );
  }
}
