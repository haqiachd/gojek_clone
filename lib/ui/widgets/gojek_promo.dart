import 'package:flutter/material.dart';
import 'package:gojek_clone/config/configs.dart';
import 'package:gojek_clone/data/models/gojek_promo.dart';

class GojekPromo extends StatelessWidget {
  final List<GojekPromoModel>? gojekPromo;
  const GojekPromo({this.gojekPromo});

  static double radius = 15;
  static double paddingText = 15;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...gojekPromo!.map(
          (data) => Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(radius),
              border: Border(
                top: BorderSide(width: 0.5, color: GojekColor.hex_E8E8E8),
                left: BorderSide(width: 1.2, color: GojekColor.hex_E8E8E8),
                right: BorderSide(width: 1.2, color: GojekColor.hex_E8E8E8),
                bottom: BorderSide(width: 3, color: GojekColor.hex_E8E8E8),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(radius),
                    topRight: Radius.circular(radius),
                  ),
                  child: Image.asset(
                    data.image!,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: EdgeInsets.only(
                    right: paddingText,
                    left: paddingText,
                  ),
                  child: Text(
                    data.title!,
                    style: GojekTypography.bold16_letter_spacing.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: paddingText,
                    left: paddingText,
                  ),
                  child: Text(
                    data.deskripsi!,
                    style: GojekTypography.regular14_line_spaccing_140.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
