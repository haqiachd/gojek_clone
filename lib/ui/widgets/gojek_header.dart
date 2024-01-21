import 'package:flutter/material.dart';
import 'package:gojek_clone/config/configs.dart';

class GojekHeader extends StatelessWidget {
  const GojekHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Image.asset(
        GojekImage.iklan,
        width: double.infinity,
        height: 200,
        fit: BoxFit.cover,
        filterQuality: FilterQuality.high,
      ),
    );
  }
}
