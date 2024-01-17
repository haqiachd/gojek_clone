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
      height: 200,
      child: GridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 8,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          ...gojekFeature.map(
            (data) => Container(
              margin: const EdgeInsets.only(left: 3.5, right: 3.5),
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
                  Text(
                    data.title!,
                    style: GojekTypography.regular12_5.copyWith(
                      color: GojekColor.hex_4A4A4A,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
