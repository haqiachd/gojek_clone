import 'package:flutter/material.dart';
import 'package:gojek_clone/config/configs.dart';
import 'package:gojek_clone/data/models/models.dart';
import 'package:gojek_clone/data/shared/bottom_nav_data.dart';
import 'package:gojek_clone/ui/widgets/widgets.dart';

class MyTest extends StatefulWidget {
  const MyTest({super.key});

  @override
  State<MyTest> createState() => _MyTestState();
}

class _MyTestState extends State<MyTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(104 - MediaQuery.of(context).padding.top),
        child: GojekAppBar(),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, -1),
            ),
          ],
        ),
        child: Container(
          height: 65,
          width: double.infinity,
          padding: const EdgeInsets.only(left: 8, right: 8),
          decoration: const BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 1000),
                top: 0,
                left: getWithContent(context) * posTop,
                curve: Curves.elasticOut,
                child: Container(
                  width: getWithContent(context),
                  height: 4,
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
                top: 4,
                child: Row(
                  children: [
                    ...bottomNavData.map(
                      (data) => InkWell(
                        onTap: () {
                          setState(
                            () {
                              switch (data.label) {
                                case BottomNavModel.beranda:
                                  posTop = 0;
                                  break;
                                case BottomNavModel.promo:
                                  posTop = 1;
                                  break;
                                case BottomNavModel.pesanan:
                                  posTop = 2;
                                  break;
                                case BottomNavModel.chat:
                                  posTop = 3;
                                  break;
                              }
                            },
                          );
                          // delay anim
                          Future.delayed(const Duration(milliseconds: 300), () {
                            setState(() {
                              position = posTop;
                            });
                          });
                        },
                        child: Container(
                          width: getWithContent(context),
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            gradient: (position == data.numOfPos)
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
                                child: (position == data.numOfPos)
                                    ? Image.asset(
                                        data.activeIcon!,
                                        width: sizeOfImage(
                                            data.width!, data.numOfPos!),
                                        height: sizeOfImage(
                                            data.height!, data.numOfPos!),
                                      )
                                    : Image.asset(
                                        data.icon!,
                                        width: sizeOfImage(
                                            data.width!, data.numOfPos!),
                                        height: sizeOfImage(
                                            data.height!, data.numOfPos!),
                                      ),
                              ),
                              const SizedBox(height: 7),
                              Text(
                                data.label!,
                                style: (position == data.numOfPos)
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
      ),
    );
  }

  int posTop = 0;
  int position = 0;

  double sizeOfImage(double size, double numPoss) {
    return (posTop == numPoss) ? size - 1 : size + 1;
  }

  double getWithContent(BuildContext context) =>
      (MediaQuery.of(context).size.width - 16) / 4;
}
