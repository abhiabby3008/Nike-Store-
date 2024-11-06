
import 'package:flutter/material.dart';
import 'components/details_screen_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailsScreen'),
      ),
      body: const DetailsScreenBody(),
    );
  }
}
    