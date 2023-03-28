import 'package:flutter/material.dart';

import '../../products/user_productlist_tile.dart';
import '../../products/products_manager.dart';

class UserProductScreen extends StatelessWidget {
  const UserProductScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final productsManager = ProductsManagerPopurlar();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Product'),
        actions: <Widget>[
          buildAddButton(),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async => print('refresh product'),
        child: buildUserProductListView(productsManager),
      ),
    );
  }

  Widget buildUserProductListView(ProductsManagerPopurlar productsManager) {
    return ListView.builder(
      itemCount: productsManager.itemCount,
      itemBuilder: (ctx, i) => Column(
        children: [
          UserProductListTile(productsManager.items[i]),
          const Divider()
        ],
      ),
    );
  }

  Widget buildAddButton() {
    return IconButton(
      icon: const Icon(Icons.add),
      onPressed: () {
        print('Go to edit product screen');
      },
    );
  }
  
}

