import 'package:flutter/material.dart';
import 'package:mini_ecommerce/components/my_drawer.dart';
import 'package:mini_ecommerce/components/my_product_tile.dart';
import 'package:mini_ecommerce/models/product.dart';
import 'package:mini_ecommerce/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Shop Page"),
        ),
        drawer: const MyDrawer(),
        body: ListView(
          children: [
            // shop title
            Center(
              child: Text(
                "Pick from selected list of premium products",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
            ),

            // shop subtitle

            // product list
            SizedBox(
              height: 550,
              child: ListView.builder(
                padding: EdgeInsets.all(15),
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];

                  return MyProductTile(product: product);
                },
              ),
            ),
          ],
        ));
  }
}
