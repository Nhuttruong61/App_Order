import 'package:flutter/material.dart';

import '../../models/cart_item.dart';
import '../../models/order_item.dart';

class OrdersManager with ChangeNotifier {
  final List<OrderItem> _orders = [
    OrderItem(
      id: 'o1',
      amount: 78000,
      products: [
        CartItem(
          id: 'c1',
          title: 'Hamburger',
          price: 39000,
          quantity: 2,
        )
      ],
      dateTime: DateTime.now(),
    )
  ];

  int get oderCount {
    return _orders.length;
  }

  List<OrderItem> get orders {
    return [..._orders];
  }
}