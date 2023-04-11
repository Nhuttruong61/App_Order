import 'package:flutter/material.dart';
import 'cart.dart';
import './food_product.dart';

class ProductCartManager extends ChangeNotifier {
  final Cart _cart = Cart();

  List<Product> get items => _cart.items;

  void addToCart(Product product) {
    _cart.addProduct(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    _cart.removeProduct(product);
    notifyListeners();
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }
}
