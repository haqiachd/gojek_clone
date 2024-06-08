import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek_clone/config/configs.dart';

class GojekAppBar extends StatelessWidget {
  const GojekAppBar({Key? key}) : super(key: key);

  final double radius = 15;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Material(
        color: Colors.white,
        elevation: 1.1,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(radius),
          bottomRight: Radius.circular(radius),
        ),
        child: AppBar(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(radius),
              bottomRight: Radius.circular(radius),
            ),
          ),
          toolbarHeight: 104 - MediaQuery.of(context).padding.top,
          elevation: 0,
          flexibleSpace: Padding(
            padding: const EdgeInsets.fromLTRB(16, 48, 16, 14),
            child: SizedBox(
              height: 41.5,
              child: Material(
                color: Colors.white,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 41.5,
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: GojekColor.hex_F7F7F7,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                  color: GojekColor.hex_E8E8E8.withOpacity(0.8),
                                  width: 2.1,
                                ),
                              ),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    GojekIcon.search,
                                    width: 20.68,
                                    height: 22.86,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Cari layanan, makanan, & tujuan',
                                    style: GojekTypography.semibold14.copyWith(
                                      color: GojekColor.hex_666867,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          SizedBox(
                            width: 42,
                            height: 42,
                            child: Stack(
                              children: [
                                SizedBox(
                                  width: 41.5,
                                  height: 41.5,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    backgroundImage:
                                        AssetImage(GojekImage.hitler),
                                  ),
                                ),
                                const Positioned(
                                  right: -1,
                                  top: 0,
                                  child: SizedBox(
                                    width: 15,
                                    height: 15,
                                    child: Material(
                                      color: Colors.white,
                                      shape: CircleBorder(),
                                      child: Center(
                                        child: SizedBox(
                                          width: 13,
                                          height: 13,
                                          child: Material(
                                            color: Colors.red,
                                            shape: CircleBorder(),
                                            child: Center(
                                              child: SizedBox(
                                                width: 2.5,
                                                height: 2.5,
                                                child: Material(
                                                  color: Colors.white,
                                                  shape: CircleBorder(),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
