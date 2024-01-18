import 'package:flutter/material.dart';
import 'package:gojek_clone/config/configs.dart';
import 'package:gojek_clone/data/models/event_title_model.dart';
import 'package:gojek_clone/ui/widgets/event_title.dart';
import 'package:gojek_clone/ui/widgets/gojek_feature.dart';
import 'package:gojek_clone/ui/widgets/gojek_header.dart';
import 'package:gojek_clone/ui/widgets/gojek_promo.dart';
import 'package:gojek_clone/ui/widgets/gopay_menu.dart';
import 'package:gojek_clone/ui/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(104 - MediaQuery.of(context).padding.top),
        child: const GojekAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 245,
              child: Stack(
                children: [
                  GojekHeader(),
                  GopayMenu(),
                ],
              ),
            ),
            const GojekFeature(),
            const GojekPromo(),
            const SizedBox(height: 25),
            EventTitle(
              model: EventTitleModel(
                icon: GojekImage.gomart,
                title: 'Belanja di GoMart, Pasti Ada!',
                btnTitle: 'Pilih Semua',
                deskripsi:
                    'Butuh apa? di GoMart dianter itungan menit + 24 jam',
                haveButton: false,
              ),
            ),
            const SizedBox(height: 200),
          ],
        ),
      ),
    );
  }
}
