import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek_clone/config/configs.dart';
import 'package:gojek_clone/data/models/event_title_model.dart';
import 'package:gojek_clone/data/models/gofood_model.dart';
import 'package:gojek_clone/data/shared/gofood_data.dart';
import 'package:gojek_clone/ui/widgets/event_title.dart';

class GoFoodFirst extends StatelessWidget {
  final EventTitleModel? eventTitle;
  final List<GoFoodModel>? models;

  const GoFoodFirst({
    required this.eventTitle,
    required this.models,
  });

  final double radius = 18;
  final double height = 270;
  final double width = 176;

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 8),
              ...gofoodFirst.map(
                (data) => Container(
                  margin: const EdgeInsets.only(left: 8, right: 8),
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(radius),
                    border: Border(
                      top: BorderSide(width: 0.1, color: GojekColor.hex_E8E8E8),
                      left:
                          BorderSide(width: 1.3, color: GojekColor.hex_E8E8E8),
                      right:
                          BorderSide(width: 1.3, color: GojekColor.hex_E8E8E8),
                      bottom:
                          BorderSide(width: 2.4, color: GojekColor.hex_E8E8E8),
                    ),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(radius),
                        child: Image.asset(
                          data.icon!,
                          height: 145,
                          width: width,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(13, 13, 13, 0),
                        height: 112,
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${data.distance!} km',
                                  style: GojekTypography.semibold12_5.copyWith(
                                    color: GojekColor.hex_666867,
                                  ),
                                ),
                                const SizedBox(height: 11),
                                Text(
                                  data.restoName!,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: GojekTypography.bold16,
                                ),
                              ],
                            ),
                            Positioned(
                              left: 0,
                              bottom: 0,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    GojekIcon.rating,
                                    width: 15,
                                    height: 15,
                                  ),
                                  const SizedBox(width: 10),
                                  SizedBox(
                                    height: 15,
                                    child: Center(
                                      child: Text(
                                        '${data.star}',
                                        style: GojekTypography.semibold12_5
                                            .copyWith(
                                          color: GojekColor.hex_666867,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
