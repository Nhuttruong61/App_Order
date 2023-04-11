import './food_product.dart';

class Cart {
  final List<Product> _items = [];

  List<Product> get items => _items;

  void addProduct(Product product) {
    _items.add(product);
  }

  void removeProduct(Product product) {
    _items.remove(product);
  }

  void clear() {
    _items.clear();
  }

  double get totalPrice {
    double sum = 0.0;
    for (var product in _items) {
      sum += product.price;
    }
    return sum;
  }
}
