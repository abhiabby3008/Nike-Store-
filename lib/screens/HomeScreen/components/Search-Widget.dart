import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike/cons/clr_cons.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 269.w,
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14.r)),
                prefixIcon: const Icon(Icons.search_outlined),
                labelText: "Looking for Shoes"),
          ),
        ),
        const Spacer(),
        Container(
            decoration: const BoxDecoration(color: btncolor, shape: BoxShape.circle),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(
                Icons.tune_outlined,
                color: Colors.white,
                size: 20.sp,
              ),
            )),
      ],
    );
  }
}
