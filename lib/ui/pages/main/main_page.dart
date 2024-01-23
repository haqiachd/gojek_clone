import 'package:flutter/material.dart';
import 'package:gojek_clone/ui/pages/main/home_page.dart';
import 'package:gojek_clone/ui/widgets/appbar_bottom_main.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);
    return const Scaffold(
      body: HomePage(),
      bottomNavigationBar: GojekBottomAppbar(),
    );
  }
}
