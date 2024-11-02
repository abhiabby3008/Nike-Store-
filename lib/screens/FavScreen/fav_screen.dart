import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike/screens/HomeScreen/components/Bottom_Navigation_Bar.dart';
import 'components/fav_screen_body.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Favourite',
          style: TextStyle(fontFamily: "Raleway"),
        ),
        centerTitle: true,
        actions: [
          Container(
              height: 40.h,
              width: 40.w,
              decoration:
                  const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: const Icon(Icons.favorite_border)),
          SizedBox(
            width: 10.w,
          )
        ],
      ),
      body: FavScreenBody(),
      bottomNavigationBar: const Bottomnavbar(),
    );
  }
}
