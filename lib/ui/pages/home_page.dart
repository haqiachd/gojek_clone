import 'package:flutter/material.dart';
import 'package:gojek_clone/data/shared/gojek_promo_data.dart';
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
            GojekPromo(gojekPromo: gojekPromo2)
          ],
        ),
      ),
    );
  }
}
