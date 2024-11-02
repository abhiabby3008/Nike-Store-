import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike/cons/img_cons.dart';
import 'components/sneaker_shop_screen_body.dart';

class SneakerShop extends StatelessWidget {
  const SneakerShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sneaker Shop'),
        centerTitle: true,
        actions: [
          Image.asset(
            bag,
            scale: 3,
          ),
          SizedBox(
            width: 10.w,
          )
        ],
      ),
      body: SneakerShopBody(),
    );
  }
}
