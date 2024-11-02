import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike/screens/SneakerShopScreen/sneaker_shop_screen.dart';

import '../../../cons/clr_cons.dart';

Widget shoeCard(String name, String price, String imagePath) {
  bool isFavorite = false;

  return StatefulBuilder(
    builder: (context, setState) {
      return GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SneakerShop()));
        },
        child: Container(
          width: 150.h,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.r),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  isFavorite ? Colors.grey[200] : Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: isFavorite ? favred : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    child: Image.asset(
                      imagePath,
                      height: 100.h,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text('BEST SELLER',
                      style: TextStyle(color: btncolor, fontSize: 12.sp)),
                  Text(name,
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    children: [
                      Text('\$$price', style: TextStyle(fontSize: 14.sp)),
                      const Spacer(),
                      Container(
                        height: 10.h,
                        width: 10.h,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: favred),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        height: 10.h,
                        width: 10.h,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: btncolor),
                      ),
                      SizedBox(
                        width: 10.w,
                      )
                    ],
                  ),
                ],
              ),
              // Positioned(
              //   bottom: -1,
              //   right: 0,
              //   child: Container(
              //     width: 40.w,
              //     height: 40.h,
              //     decoration: BoxDecoration(
              //       color: btncolor,
              //       borderRadius: BorderRadius.only(
              //         topLeft: Radius.circular(15.r),
              //       ),
              //     ),
              //     child: IconButton(
              //       onPressed: () {
              //         // Add action here
              //       },
              //       icon: Icon(Icons.add, color: Colors.white, size: 18),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      );
    },
  );
}
