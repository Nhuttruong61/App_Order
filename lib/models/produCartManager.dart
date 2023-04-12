import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'cart.dart';
import './food_product.dart';

class ProductCartManager extends ChangeNotifier {
  final Cart _cart = Cart();

  ProductCartManager() {
    // Load giỏ hàng từ local storage khi khởi tạo
    _loadCartFromLocalStorage();
  }

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

  double get totalPrice {
    double sum = 0.0;
    for (var product in items) {
      sum += product.price;
    }
    return sum;
  }

  // Lấy dữ liệu giỏ hàng từ local storage
  Future<void> _loadCartFromLocalStorage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> cartItems = prefs.getStringList('cart_items') ?? [];
    _cart.clear();
    for (var item in cartItems) {
      Map<String, dynamic> productJson = jsonDecode(item);
      Product product = Product.fromJson(productJson);
      _cart.addProduct(product);
    }
    notifyListeners();
  }
}
