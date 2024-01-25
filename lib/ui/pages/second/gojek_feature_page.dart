import 'package:flutter/material.dart';
import 'package:gojek_clone/config/configs.dart';

class GojekFeaturePage extends StatelessWidget {
  final String? title;
  final String? icon;
  const GojekFeaturePage({
    this.title,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 1,
        title: Text(
          'This is Appbar',
          style: GojekTypography.bold18.copyWith(
            letterSpacing: 3,
            fontSize: 20,
            color: GojekColor.hex_008600,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          SizedBox(
            width: 140,
            height: 140,
            child: Hero(
              tag: 'icon-${title!}',
              child: Image.asset(
                icon!,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.center,
            child: Text(
              title!,
              style: GojekTypography.bold24.copyWith(
                color: GojekColor.hex_4A4A4A,
                fontSize: 35,
              ),
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
