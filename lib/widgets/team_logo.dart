import 'package:flutter/material.dart';

class TeamLogo extends StatelessWidget {
  final double size;

  const TeamLogo({super.key, this.size = 120});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/logo.png',
      width: size,
      height: size,
      fit: BoxFit.contain,
    );
  }
}
