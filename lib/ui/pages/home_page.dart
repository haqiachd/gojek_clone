import 'package:flutter/material.dart';
import 'package:gojek_clone/config/configs.dart';
import 'package:gojek_clone/data/models/models.dart';
import 'package:gojek_clone/data/shared/bottom_nav_data.dart';
import 'package:gojek_clone/ui/widgets/widgets.dart';
import 'package:gojek_clone/data/shared/shared.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: null,
      body: Stack(
        children: [
          Positioned(
            top: 95,
            left: 0,
            right: 0,
            bottom: 0,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const ClampingScrollPhysics(),
              child: _homeContent(),
            ),
          ),
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: GojekAppBar(),
          ),
        ],
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
        child: BottomAppBar(
          color: Colors.white,
          surfaceTintColor: Colors.white,
          child: Row(
            children: [
              ...bottomNavData.map(
                (data) => Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 30,
                        height: 30,
                        child: Center(
                          child: Image.asset(
                            data.icon!,
                            width: data.width,
                            height: data.height,
                          ),
                        ),
                      ),
                      Text(data.label!),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _homeContent() {
    return Column(
      children: [
        const SizedBox(
          height: 237,
          child: Stack(
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
          models: gofoodFirst,
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
          models: gofoodSecond,
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
          models: gofoodThird,
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
          list: gomartData,
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
