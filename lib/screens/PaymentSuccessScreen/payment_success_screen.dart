import 'package:flutter/material.dart';
import 'components/payment_success_screen_body.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: PaymentSuccessBody(),
    );
  }
}
