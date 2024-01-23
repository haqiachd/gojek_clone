import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gojek_clone/config/configs.dart';
import 'package:gojek_clone/ui/pages/pages.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gojek Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: GojekColor.hex_097210,
        ),
        appBarTheme: const AppBarTheme(
          surfaceTintColor: Colors.white,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          unselectedLabelStyle: GojekTypography.bold14,
          selectedLabelStyle: GojekTypography.bold14,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
