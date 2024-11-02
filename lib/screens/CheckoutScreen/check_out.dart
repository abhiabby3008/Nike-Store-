import 'package:flutter/material.dart';
import 'components/check_out_body.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckOut'),
        centerTitle: true,
      ),
      body: const CheckOutBody(),
    );
  }
}
