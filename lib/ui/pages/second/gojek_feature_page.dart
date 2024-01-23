import 'package:flutter/material.dart';
import 'package:gojek_clone/config/configs.dart';

class GojekFeaturePage extends StatelessWidget {
  final String? title;
  const GojekFeaturePage({
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title!,
        style: GojekTypography.bold24.copyWith(
          color: GojekColor.hex_008600,
          fontSize: 30,
        ),
      ),
    );
  }
}
