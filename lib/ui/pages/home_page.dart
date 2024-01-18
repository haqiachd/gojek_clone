import 'package:flutter/material.dart';
import 'package:gojek_clone/config/configs.dart';
import 'package:gojek_clone/data/models/event_title_model.dart';
import 'package:gojek_clone/data/shared/gofood_data.dart';
import 'package:gojek_clone/data/shared/gojek_promo_data.dart';
import 'package:gojek_clone/data/shared/gomart_data.dart';
import 'package:gojek_clone/ui/widgets/gofood_resto.dart';
import 'package:gojek_clone/ui/widgets/gofood_terlaris.dart';
import 'package:gojek_clone/ui/widgets/gomart_list.dart';
import 'package:gojek_clone/ui/widgets/tokopedia_promo.dart';
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
            GojekPromo(gojekPromo: gojekPromo1),
            const SizedBox(height: 25),
            const GoFoodFirst(),
            const SizedBox(height: 25),
            const TokopediaPromo(),
            const SizedBox(height: 15),
            GojekPromo(gojekPromo: gojekPromo2),
            const SizedBox(height: 20),
            GoFoodTerlaris(gofoodlist: gofoodSecond),
            const SizedBox(height: 20),
            GojekPromo(gojekPromo: gojekPromo3),
            const SizedBox(height: 20),
            GoFoodResto(gofoodlist: gofoodThird),
            const SizedBox(height: 20),
            GomartList(
              eventTitle: EventTitleModel(
                icon: GojekImage.gomart,
                title: "Belanja di GoMart, Pasti Ada!",
                deskripsi:
                    "Butuh apa? di GoMart dianter itungan menit + 24 jam 🛒",
                haveButton: true,
                btnTitle: 'Lihat semua',
              ),
              list: gomartData,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
