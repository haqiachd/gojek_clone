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
              Column(
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
              const SizedBox(width: 40),
              ...gopayMenu.map(
                (data) => SizedBox(
                  width: 50,
                  height: 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: GojekColor.hex_00B2DA,
                          borderRadius: BorderRadius.circular(data.radius!),
                        ),
                        child: Stack(
                          children: [
                            Center(
                              child: SizedBox(
                                width: data.width,
                                height: data.height,
                                child: Image.asset(
                                  data.icon!,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Visibility(
                              visible: data.indicator!,
                              child: Positioned(
                                right: -3,
                                top: -3,
                                child: SizedBox(
                                  width: 14,
                                  height: 14,
                                  child: Material(
                                    color: Colors.white,
                                    shape: const CircleBorder(),
                                    child: Center(
                                      child: SizedBox(
                                        width: 13,
                                        height: 13,
                                        child: Material(
                                          color: Colors.red,
                                          shape: const CircleBorder(),
                                          child: Center(
                                            child: Text(
                                              '2',
                                              style: GojekTypography.regular12_5
                                                  .copyWith(
                                                fontSize: 8,
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
                      const SizedBox(height: 2),
                      Text(
                        data.title!,
                        style: GojekTypography.regular12_5,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
