import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike/cons/img_cons.dart';
import 'package:nike/screens/HomeScreen/components/ShoeCard.dart';

class FavScreenBody extends StatelessWidget {
  const FavScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: SizedBox(
              height: 500.h,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 240.h,
                    // childAspectRatio: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 15),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return shoeCard("Nike Air Jordan", "300", NikeAirMaxBlue);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
