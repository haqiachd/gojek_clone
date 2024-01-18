import 'package:flutter/material.dart';
import 'package:gojek_clone/config/color.dart';
import 'package:gojek_clone/config/typography.dart';
import 'package:gojek_clone/data/models/event_title_model.dart';

class EventTitle extends StatelessWidget {
  // const EventTitle({super.key});
  final EventTitleModel? model;
  EventTitle({this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                model!.icon.toString(),
                height: 21,
              ),
              const SizedBox(height: 2),
              SizedBox(
                width: (model!.haveButton)
                    ? 230
                    : MediaQuery.of(context).size.width - 100,
                child: Text(
                  model!.title.toString(),
                  maxLines: 1,
                  style: GojekTypography.bold16,
                ),
              ),
              SizedBox(
                width: (model!.haveButton)
                    ? 230
                    : MediaQuery.of(context).size.width - 100,
                child: Text(
                  model!.deskripsi.toString(),
                  maxLines: 2,
                  style: GojekTypography.regular14_line_spaccing_140,
                ),
              )
            ],
          ),
          Visibility(
            visible: model!.haveButton,
            child: Container(
              margin: const EdgeInsets.only(top: 24),
              width: 110,
              height: 36,
              decoration: BoxDecoration(
                color: GojekColor.hex_E0FFE0,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  model!.btnTitle.toString(),
                  style: GojekTypography.bold14.copyWith(
                    color: GojekColor.hex_046417,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
