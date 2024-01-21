import 'package:flutter/material.dart';
import 'package:gojek_clone/config/color.dart';
import 'package:gojek_clone/config/typography.dart';
import 'package:gojek_clone/data/shared/gojek_feature_data.dart';

class GojekFeature extends StatelessWidget {
  const GojekFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 22, right: 22),
      width: double.infinity,
      color: Colors.white,
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 4, // Spasi antar item
        runSpacing: 10, // Spasi antar baris
        children: gojekFeature
            .map(
              (data) => Container(
                width: 82,
                height: 77,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 57,
                      child: Image.asset(
                        data.icon!,
                        width: data.width,
                        height: data.height,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        data.title!,
                        style: GojekTypography.regular12_5.copyWith(
                          color: GojekColor.hex_4A4A4A,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
