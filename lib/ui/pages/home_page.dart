import 'package:flutter/material.dart';
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
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 245,
              child: Stack(
                children: [
                  GojekHeader(),
                  GopayMenu(),
                ],
              ),
            ),
            GojekFeature(),
            GojekPromo(),
            SizedBox(height: 25),
            GoFoodFirst(),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
