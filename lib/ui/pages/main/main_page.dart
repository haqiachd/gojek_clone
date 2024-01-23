import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gojek_clone/bloc/blocs.dart';
import 'package:gojek_clone/ui/pages/main/main.dart';
import 'package:gojek_clone/ui/widgets/widgets.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.width);
    // print(MediaQuery.of(context).size.height);
    return BlocProvider(
      create: (context) => BottomNavBloc(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocBuilder<BottomNavBloc, int>(
          builder: (context, data) => _pages[data],
        ),
        bottomNavigationBar: const GojekBottomAppbar(),
      ),
    );
  }
}

List<Widget> _pages = const [
  HomePage(),
  PromoPage(),
  PesananPage(),
  ChatPage(),
];
