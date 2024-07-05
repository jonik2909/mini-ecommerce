import 'package:flutter/material.dart';
import 'package:mini_ecommerce/pages/intro_page.dart';
import 'package:mini_ecommerce/pages/shop_page.dart';
import 'package:mini_ecommerce/themes/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: lightMode,
      routes: {
        "/intro_page": (context) => const IntroPage(),
        "/shop_page": (context) => const ShopPage(),
      },
    );
  }
}
