import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek_clone/config/configs.dart';
import 'package:gojek_clone/data/models/models.dart';
import 'package:gojek_clone/ui/widgets/widgets.dart';

class GoFoodSecond extends StatelessWidget {
  final EventTitleModel? eventTitle;
  final List<GoFoodModel>? models;

  const GoFoodSecond({
    required this.eventTitle,
    required this.models,
  });

  final double radius = 17;

  @override
  Widget build(BuildContext context) {
    return EventTitle(
      model: EventTitleModel(
          icon: eventTitle!.icon,
          iconSize: eventTitle!.iconSize,
          title: eventTitle!.title,
          btnTitle: eventTitle!.btnTitle,
          deskripsi: eventTitle!.deskripsi,
          haveButton: eventTitle!.haveButton,
          contentSpace: eventTitle!.contentSpace,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 9),
                ...models!.getRange(0, 7).map(
                      (data) => Container(
                        margin: const EdgeInsets.only(left: 9, right: 9),
                        width: 145,
                        height: 257,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(radius),
                          border: Border(
                            top: BorderSide(
                                width: 0.1, color: GojekColor.hex_E8E8E8),
                            left: BorderSide(
                                width: 1.3, color: GojekColor.hex_E8E8E8),
                            right: BorderSide(
                                width: 1.3, color: GojekColor.hex_E8E8E8),
                            bottom: BorderSide(
                                width: 2.4, color: GojekColor.hex_E8E8E8),
                          ),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(radius),
                                topRight: Radius.circular(radius),
                              ),
                              child: Image.asset(
                                data.icon!,
                                height: 145,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 155,
                              right: 10,
                              left: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    data.restoName!,
                                    maxLines: 2,
                                    style: GojekTypography.bold16.copyWith(
                                      color: Colors.black,
                                      height: 1.2,
                                    ),
                                  ),
                                  Text(
                                    data.category!,
                                    maxLines: 1,
                                    style: GojekTypography.regular12_5.copyWith(
                                      color: GojekColor.hex_474948,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 8,
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    GojekIcon.rating,
                                    width: 15,
                                    height: 15,
                                  ),
                                  const SizedBox(width: 9),
                                  SizedBox(
                                    height: 15,
                                    child: Text(
                                      '${data.star}',
                                      style:
                                          GojekTypography.semibold12_5.copyWith(
                                        color: GojekColor.hex_666867,
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
                const SizedBox(width: 9),
              ],
            ),
          )),
    );
  }
}
