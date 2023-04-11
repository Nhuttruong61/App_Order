import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/produCartManager.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Giỏ hàng'),
      ),
      body: Consumer<ProductCartManager>(
        builder: (context, cart, child) => ListView.builder(
          itemCount: cart.items.length,
          itemBuilder: (context, index) => ListTile(
            leading: Image.network(cart.items[index].imageUrl)
            ,
            
            title: Text(cart.items[index].title),
            // subtitle: Text('${cart.items[index].quantity} x ${cart.items[index].price} đồng'),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                cart.removeFromCart(cart.items[index]);
              },
            ),
          ),
        ),
      ),
    );
  }
}
