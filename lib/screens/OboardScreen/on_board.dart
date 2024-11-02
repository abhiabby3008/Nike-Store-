import 'package:flutter/material.dart';
import 'components/on_board_body.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoardBody(),
    );
  }
}
