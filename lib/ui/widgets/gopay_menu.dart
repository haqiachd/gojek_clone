import 'package:flutter/material.dart';
import 'package:gojek_clone/config/configs.dart';
import 'package:gojek_clone/data/shared/gopay_menu_data.dart';

class GopayMenu extends StatelessWidget {
  const GopayMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 177,
      left: 0,
      right: 0,
      child: Container(
        margin: const EdgeInsets.only(left: 16, right: 16),
        width: double.infinity,
        height: 61,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border(
            top: BorderSide(width: 0.5, color: GojekColor.hex_E8E8E8),
            left: BorderSide(width: 1.5, color: GojekColor.hex_E8E8E8),
            right: BorderSide(width: 1.5, color: GojekColor.hex_E8E8E8),
            bottom: BorderSide(width: 2, color: GojekColor.hex_E8E8E8),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Row(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: GojekColor.hex_F7F7F7,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Center(
                  child: SizedBox(
                    width: 18,
                    height: 18,
                    child: Image.asset(
                      GojekImage.gopay_circle,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        'Rp15.000',
                        style: GojekTypography.bold14,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(
                        '0 coins',
                        style: GojekTypography.regular14,
                      ),
                    )
                  ],
                ),
              ),
              ...gopayMenu.map(
                (data) => Container(
                  width: 50,
                  height: 60,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 6),
                      Expanded(
                        child: Stack(
                          children: [
                            Center(
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: GojekColor.hex_00B2DA,
                                  borderRadius:
                                      BorderRadius.circular(data.radius!),
                                ),
                                child: Center(
                                  child: SizedBox(
                                    width: data.width,
                                    height: data.height,
                                    child: Image.asset(
                                      data.icon!,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: data.indicator!,
                              child: Positioned(
                                right: 10,
                                top: 0,
                                child: SizedBox(
                                  width: 15,
                                  height: 15,
                                  child: Material(
                                    color: Colors.white,
                                    shape: const CircleBorder(),
                                    child: Center(
                                      child: SizedBox(
                                        width: 13,
                                        height: 13,
                                        child: Material(
                                          color: GojekColor.hex_F41E2A,
                                          shape: const CircleBorder(),
                                          child: Center(
                                            child: Text(
                                              '${data.indicatorValues}',
                                              textAlign: TextAlign.center,
                                              style: GojekTypography
                                                  .semibold12_5
                                                  .copyWith(
                                                fontSize: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        data.title!,
                        style: GojekTypography.regular12_5,
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),
            ],
          ),
        ),
      ),
    );
  }
}
