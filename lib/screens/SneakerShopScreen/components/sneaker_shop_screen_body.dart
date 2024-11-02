import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike/cons/clr_cons.dart';
import 'package:nike/cons/img_cons.dart';
import 'package:nike/screens/MyCartScreen/mycart_screen.dart';
import 'package:nike/screens/SneakerShopScreen/components/diff_shoes_widget.dart';

class SneakerShopBody extends StatefulWidget {
  const SneakerShopBody({super.key});

  @override
  State<SneakerShopBody> createState() => _SneakerShopBodyState();
}

class _SneakerShopBodyState extends State<SneakerShopBody> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.h,
            ),
            Text(
              "Nike Air Max 270 \nEssential",
              style: TextStyle(fontSize: 26.sp, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Men's Shoes",
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "\$179.39",
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700),
            ),
            Center(
              child: Image.asset(
                NikeAirMaxPink,
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DiffShoes_widget(
                  image: NikeAirMaxRed,
                ),
                DiffShoes_widget(
                  image: NikeAirMaxBlue,
                ),
                DiffShoes_widget(
                  image: NikeAirMaxRed,
                ),
                DiffShoes_widget(
                  image: NikeAirMaxBlack,
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike........",
              style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Read More",
                  style: TextStyle(
                      color: btncolor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            isFavorite ? Colors.grey[200] : Colors.grey[200]),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite ? favred : Colors.black54,
                        size: 35,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyCartScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: btncolor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 45.w, vertical: 15.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            bag,
                            scale: 3,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Add to Cart",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
