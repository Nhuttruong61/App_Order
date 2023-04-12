import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import './food_product.dart';

class Cart {
  final List<Product> _items = [];

  List<Product> get items => _items;

  void addProduct(Product product) {
    _items.add(product);
    _saveCartToLocalStorage();
  }

  void removeProduct(Product product) {
    _items.remove(product);
     _saveCartToLocalStorage();
  }

  void clear() {
    _items.clear();
    _saveCartToLocalStorage();
  }

  double get totalPrice {
    double sum = 0.0;
    for (var product in _items) {
      sum += product.price;
    }
    return sum;
  }
  // Lấy dữ liệu giỏ hàng từ local storage
  Future<void> _loadCartFromLocalStorage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> cartItems = prefs.getStringList('cart_items') ?? [];
    _items.clear();
    for (var item in cartItems) {
      Map<String, dynamic> productJson = jsonDecode(item);
      Product product = Product.fromJson(productJson);
      _items.add(product);
    }
  }
  
 
    // Lưu giỏ hàng vào local storage
  Future<void> _saveCartToLocalStorage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> cartItems = _items.map((item) => jsonEncode(item.toJson())).toList();
    prefs.setStringList('cart_items', cartItems);
  }
}
