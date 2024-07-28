import 'package:flutter/material.dart';

class OnlineWidget extends StatelessWidget {
  const OnlineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 20.0,
      height: 20.0,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Container(
          width: 12.0,
          height: 12.0,
          decoration: const BoxDecoration(
            color: Colors.green,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
