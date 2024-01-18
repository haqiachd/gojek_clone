import 'package:flutter/material.dart';
import 'package:gojek_clone/config/configs.dart';
import 'package:gojek_clone/data/models/event_title_model.dart';
import 'package:gojek_clone/data/models/gofood_model.dart';
import 'package:gojek_clone/ui/widgets/event_title.dart';
import 'package:gojek_clone/ui/widgets/gofood_list_second.dart';

class GoFoodTerlaris extends StatelessWidget {
  final List<GoFoodModel>? gofoodlist;
  const GoFoodTerlaris({this.gofoodlist});

  final double radius = 17;

  @override
  Widget build(BuildContext context) {
    return EventTitle(
      model: EventTitleModel(
        icon: GojekImage.gofood,
        title: 'Pilihan Terlaris',
        deskripsi: '',
        btnTitle: 'Lihat semua',
        haveButton: true,
        contentSpace: 10,
        child: GoFoodSecondList(gofoodlist: gofoodlist, radius: radius),
      ),
    );
  }
}
