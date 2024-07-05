// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mini_ecommerce/components/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_bag,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 10),
            Text(
              "Minimal Shop",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Premium Quality Products",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const SizedBox(height: 10),
            MyButton(
                onTap: () => Navigator.pushNamed(context, '/shop_page'),
                child: Icon(Icons.arrow_forward))
          ],
        ),
      ),
    );
  }
}
