import 'package:flutter/material.dart';
import 'package:gojek_clone/config/configs.dart';
import 'package:gojek_clone/data/models/models.dart';
import 'package:gojek_clone/ui/widgets/widgets.dart';
import 'package:gojek_clone/data/shared/shared.dart';
import 'package:gojek_clone/utils/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 95,
          left: 0,
          right: 0,
          bottom: 0,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const ClampingScrollPhysics(),
            child: _homeContent(context),
          ),
        ),
        const Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: GojekAppBar(),
        ),
      ],
    );
  }

  Widget _homeContent(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          // height: 237,
          height: MediaQuery.of(context).size.height >=
                  MediaQuery.of(context).size.width
              ? MediaQuery.of(context).size.height / 3.514
              : MediaQuery.of(context).size.height / 2.670,
          child: const Stack(
            children: [
              GojekHeader(),
              GopayMenu(),
            ],
          ),
        ),
        const SizedBox(height: 20),
        const GojekFeature(),
        const SizedBox(height: 15),
        GojekPromo(gojekPromo: gojekPromo1),
        const SizedBox(height: 25),
        GoFoodFirst(
          eventTitle: EventTitleModel(
            title: 'Resto dengan rating jempolan',
            deskripsi: 'Ad',
            contentSpace: 19,
          ),
          models: Utils.shuffleList(gofoodData),
        ),
        const SizedBox(height: 25),
        const TokopediaPromo(),
        const SizedBox(height: 15),
        GojekPromo(gojekPromo: gojekPromo2),
        const SizedBox(height: 20),
        GoFoodSecond(
          eventTitle: EventTitleModel(
            icon: GojekImage.gofood,
            title: 'Pilihan Terlaris',
            deskripsi: '',
            haveButton: true,
            btnTitle: 'Lihat semua',
            contentSpace: 10,
          ),
          models: Utils.shuffleList(gofoodData),
        ),
        const SizedBox(height: 20),
        GojekPromo(gojekPromo: gojekPromo3),
        const SizedBox(height: 20),
        GoFoodSecond(
          eventTitle: EventTitleModel(
            icon: GojekImage.gofood,
            title: 'Banyak resto enak, loh!',
            deskripsi: '',
            haveButton: true,
            btnTitle: 'Lihat semua',
            contentSpace: 10,
          ),
          models: Utils.shuffleList(gofoodData),
        ),
        const SizedBox(height: 20),
        GomartList(
          eventTitle: EventTitleModel(
            icon: GojekImage.gomart,
            title: "Belanja di GoMart, Pasti Ada!",
            deskripsi: "Butuh apa? di GoMart dianter itungan menit + 24 jam 🛒",
            haveButton: true,
            btnTitle: 'Lihat semua',
          ),
          list: Utils.shuffleList(gomartData),
        ),
        const SizedBox(height: 20),
        GoPayList(
          model: EventTitleModel(
            icon: GojekImage.gopay,
            iconSize: 15,
            title: 'Tumbuhkan Saldomu 🥀',
            deskripsi: "Upgrage ke Gopay Tabungan & nikmati saldo tumbun 2.5%",
            contentSpace: 12,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
