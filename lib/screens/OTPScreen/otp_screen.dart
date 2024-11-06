import 'package:flutter/material.dart';
import 'components/otp_screen_body.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const OTPScreenBody(),
    );
  }
}
