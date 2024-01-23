import 'package:flutter/material.dart';
import 'package:gojek_clone/config/configs.dart';
import 'package:gojek_clone/data/shared/shared.dart';

class GojekBottomAppbar extends StatelessWidget {
  const GojekBottomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 2,
            offset: const Offset(0, -1),
          ),
        ],
      ),
      child: Container(
        height: 64,
        width: double.infinity,
        padding: const EdgeInsets.only(left: 8, right: 8),
        decoration: const BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1000),
              top: 0,
              left: _getWithContent(context) * _posTop,
              curve: Curves.elasticOut,
              child: Container(
                width: _getWithContent(context),
                height: 4.5,
                decoration: BoxDecoration(
                  color: GojekColor.hex_008600,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 4.5,
              child: Row(
                children: [
                  ...bottomNavData.map(
                    (data) => InkWell(
                      onTap: () {
                        // setState(
                        //   () {
                        //     switch (data.label) {
                        //       case BottomNavModel.beranda:
                        //         _posTop = 0;
                        //         break;
                        //       case BottomNavModel.promo:
                        //         _posTop = 1;
                        //         break;
                        //       case BottomNavModel.pesanan:
                        //         _posTop = 2;
                        //         break;
                        //       case BottomNavModel.chat:
                        //         _posTop = 3;
                        //         break;
                        //     }
                        //   },
                        // );
                        // // delay anim
                        // Future.delayed(const Duration(milliseconds: 300), () {
                        //   setState(() {
                        //     _position = _posTop;
                        //   });
                        // });
                      },
                      child: Container(
                        width: _getWithContent(context),
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          gradient: (_position == data.numOfPos)
                              ? LinearGradient(
                                  begin: FractionalOffset.topCenter,
                                  end: FractionalOffset.bottomCenter,
                                  colors: [
                                    const Color.fromARGB(255, 232, 247, 232),
                                    const Color(0xFFFFFFFF).withOpacity(0.7),
                                    Colors.white,
                                  ],
                                )
                              : null,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Center(
                              child: (_position == data.numOfPos)
                                  ? Image.asset(
                                      data.activeIcon!,
                                      width: _sizeOfImage(
                                          data.width!, data.numOfPos!),
                                      height: _sizeOfImage(
                                          data.height!, data.numOfPos!),
                                    )
                                  : Image.asset(
                                      data.icon!,
                                      width: _sizeOfImage(
                                          data.width!, data.numOfPos!),
                                      height: _sizeOfImage(
                                          data.height!, data.numOfPos!),
                                    ),
                            ),
                            const SizedBox(height: 7),
                            Text(
                              data.label!,
                              style: (_position == data.numOfPos)
                                  ? GojekTypography.semibold12_5.copyWith(
                                      color: GojekColor.hex_464847,
                                    )
                                  : GojekTypography.regular12_5.copyWith(
                                      color: GojekColor.hex_464847,
                                    ),
                            ),
                            const SizedBox(height: 2),
                          ],
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
    );
  }
}

int _posTop = 0;
int _position = 0;

double _sizeOfImage(double size, double numPoss) {
  return (_posTop == numPoss) ? size - 1 : size + 1;
}

double _getWithContent(BuildContext context) =>
    (MediaQuery.of(context).size.width - 16) / 4;
