import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek_clone/config/configs.dart';
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
            SizedBox(
              height: 333,
              child: Stack(
                children: [
                  Positioned(
                    top: -16,
                    left: 0,
                    right: 0,
                    child: Image.asset(
                      GojekImage.iklan,
                      height: 216,
                    ),
                  ),
                  Positioned(
                    top: 167,
                    left: 0,
                    right: 0,
                    child: Container(
                      margin: const EdgeInsets.only(left: 16, right: 16),
                      width: double.infinity,
                      height: 61,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Text('data'),
            SvgPicture.asset(GojekIcon.others)
          ],
        ),
      ),
    );
  }
}
