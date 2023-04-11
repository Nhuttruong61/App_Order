import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'food_product.dart';

class ProductsManagerPopurlar extends ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Hamburger',
      description: 'Món ăn nhanh tiện dụng',
      price: 39000,
      imageUrl:
          "https://beptruong.edu.vn/wp-content/uploads/2013/04/hamburger-han-quoc-thanh-pham-ngon-600x400.jpg",
    ),
    Product(
      id: 'p2',
      title: 'Sushi',
      description:
          'Là một món ăn Nhật Bản gồm cơm trộn giấm (shari) kết hợp với các nguyên liệu khác (neta).',
      price: 200000,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Sushi_platter.jpg/300px-Sushi_platter.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Ramen',
      description:
          'Món này bao gồm mì làm từ lúa mì của Trung Quốc được phục vụ với thịt hoặc (thỉnh thoảng) nước dùng làm từ cá, thường có hương vị với nước tương hoặc miso, và sử dụng các lớp phủ như thịt lợn thái mỏng (叉 焼, xá xíu), nori (rong biển sấy khô), menma, và hành lá.',
      price: 99000,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dc/Shoyu_Ramen.jpg/1200px-Shoyu_Ramen.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Bánh Mì VN',
      description:
          'Là một loại thức ăn đường phố của Việt Nam bao gồm vỏ là một ổ bánh mì nướng có da giòn, ruột mềm; bên trong là phần nhân.',
      price: 15000,
      imageUrl:
          'https://images.foody.vn/res/g104/1030781/prof/s640x400/foody-upload-api-foody-mobile-foody-upload-api-foo-200619091742.jpg',
    ),
  ];

  int get itemCount {
    return _items.length;
  }

  List<Product> get items {
    return [..._items];
  }

  // get list of products for sale
  List<Product> getProductList() {
    return _items;
  }

  // list of products in user cart
  final List<Product> _cartItems = [];

 List<Product> get cartItems => _cartItems;
  // add item to cart
   void addItemToCart(Product product) {
    _cartItems.add(product);
    notifyListeners();
  }

  void clearCart() {
    return _cartItems.clear();
  }

  // remove item from cart
  void removeItemFromCart(Product product) {
   _cartItems.remove(product);
    setCartItem(_cartItems);
    notifyListeners();
  }
}
void setCartItem(List<Product> cartItem) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('cart', json.encode(cartItem));
}

class ProductsManagerSuggest extends ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: 'b1',
      title: 'Bún cá',
      description: 'Bún và chả cá nướng trộn nước mắm, rau sống',
      price: 25000,
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/B%C3%BAn_C%C3%A1_H%C3%A0_N%E1%BB%99i.jpg/180px-B%C3%BAn_C%C3%A1_H%C3%A0_N%E1%BB%99i.jpg",
    ),
    Product(
      id: 'b2',
      title: 'Bún chả',
      description: 'Bún ăn kèm chả viên và chả miếng với nước chấm',
      price: 50000,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/B%C3%BAn_ch%E1%BA%A3_H%C3%A0ng_M%C3%A0nh.jpg/180px-B%C3%BAn_ch%E1%BA%A3_H%C3%A0ng_M%C3%A0nh.jpg',
    ),
    Product(
      id: 'b3',
      title: 'Bún đậu mắm tôm',
      description: 'Bún ăn với đậu rán và mắm tôm',
      price: 30000,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/B%C3%BAn_%C4%91%E1%BA%ADu_m%E1%BA%AFm_t%C3%B4m.jpg/180px-B%C3%BAn_%C4%91%E1%BA%ADu_m%E1%BA%AFm_t%C3%B4m.jpg',
    ),
    Product(
      id: 'b4',
      title: 'Bún ắm',
      description: 'Bún chan nước dùng làm từ mắm cá linh hay cá sặc',
      price: 25000,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/B%C3%BAn_m%E1%BA%AFm.jpg/180px-B%C3%BAn_m%E1%BA%AFm.jpg',
    ),
  ];
  // Get the number of items in the items list.
  int get itemCount {
    return _items.length;
  }

  // Get a copy of the items list.
  List<Product> get items {
    return [..._items];
  }
}
