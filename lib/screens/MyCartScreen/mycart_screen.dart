import 'package:flutter/material.dart';
import 'components/mycart_screen_body.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyCartScreen'),
        centerTitle: true,
      ),
      body: const MyCartScreenBody(),
    );
  }
}
