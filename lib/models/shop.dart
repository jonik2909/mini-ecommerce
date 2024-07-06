import 'package:flutter/material.dart';
import 'package:mini_ecommerce/models/product.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
    Product(
      name: "GARMENT-DYE SWEATSHIRT",
      price: 99.99,
      description: "Long sleeve sweatshirt with a round neck and ribbed trims.",
      imagePath: "assets/clothe1.jpg",
    ),
    Product(
      name: "TWEETY T-SHIRT",
      price: 99.99,
      description:
          "Two-piece co-ord. T-shirt with a round neck and short sleeves.",
      imagePath: "assets/clothe2.jpg",
    ),
    Product(
      name: "CROCHET BERMUDA SHORTS",
      price: 99.99,
      description: "Crochet knit Bermuda shorts with an elasticated waistband",
      imagePath: "assets/clothe3.jpg",
    ),
    Product(
      name: "MINNIE T-SHIRT",
      price: 99.99,
      description:
          "Co-ord with a round neck and short sleeves. Short ribbed leggings with an elasticated waistband. MINNIE",
      imagePath: "assets/clothe4.jpg",
    ),
  ];

  // user cart
  List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
