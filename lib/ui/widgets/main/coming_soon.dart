import 'package:flutter/material.dart';
import 'package:gojek_clone/config/configs.dart';

class ComingSoonText extends StatelessWidget {
  const ComingSoonText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Coming Soon',
        style: GojekTypography.bold24.copyWith(
          color: GojekColor.hex_008600,
          fontSize: 30,
        ),
      ),
    );
  }
}
