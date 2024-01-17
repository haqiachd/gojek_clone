import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek_clone/config/configs.dart';

class GojekAppBar extends StatelessWidget {
  const GojekAppBar({Key? key}) : super(key: key);

  final double radius = 15;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFFB1BE),
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
          elevation: 0,
          flexibleSpace: Padding(
            padding: const EdgeInsets.fromLTRB(16, 48, 16, 16),
            child: Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF7F7F7),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: GojekColor.hex_E8E8E8,
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
                const SizedBox(
                  width: 16,
                ),
                SizedBox(
                  width: 40,
                  height: 40,
                  child: Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        backgroundImage: AssetImage(GojekImage.ara),
                      ),
                      const Positioned(
                        right: 0,
                        top: 0,
                        child: SizedBox(
                          width: 16,
                          height: 16,
                          child: Material(
                            color: Colors.white,
                            shape: CircleBorder(),
                            child: Center(
                              child: SizedBox(
                                width: 15,
                                height: 15,
                                child: Material(
                                  color: Colors.red,
                                  shape: CircleBorder(),
                                  child: Center(
                                    child: SizedBox(
                                      width: 3,
                                      height: 3,
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
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
