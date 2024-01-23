import 'package:flutter/material.dart';
import 'package:gojek_clone/config/configs.dart';
import 'package:gojek_clone/data/models/event_title_model.dart';

class EventTitle extends StatelessWidget {
  // const EventTitle({super.key});
  final EventTitleModel? model;
  EventTitle({this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Visibility(
                    visible: (model!.icon != null),
                    child: Image.asset(
                      (model!.icon != null)
                          ? model!.icon.toString()
                          : GojekIcon.gofood,
                      height: model!.iconSize,
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: (model!.haveButton)
                        ? MediaQuery.of(context).size.width / 1.704
                        : MediaQuery.of(context).size.width - 30,
                    child: Text(
                      model!.title.toString(),
                      maxLines: 1,
                      style: GojekTypography.bold16,
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: (model!.haveButton)
                        ? MediaQuery.of(context).size.width / 1.704
                        : MediaQuery.of(context).size.width - 30,
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
                  margin: const EdgeInsets.only(left: 22),
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
              ),
            ],
          ),
        ),
        SizedBox(height: model!.contentSpace),
        (model!.child != null) ? model!.child! : Container()
      ],
    );
  }
}
