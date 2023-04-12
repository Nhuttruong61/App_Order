import 'package:apporderfood/ui/pages/screen.dart';
import 'package:flutter/material.dart';
import '../widget/out.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Food'),
        actions: [
          IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CartScreen()));
              }),
        ],
      ),
      body: ListView(
        children: const [
          SearchBarWidget(),
          // popular Items
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20, bottom: 10),
            child: Text(
              "Phổ biến",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          PopularItem(),
          // Newest
          Padding(
              padding:
                  EdgeInsets.only(top: 20, bottom: 10, right: 10, left: 10),
              child: Text(
                "Gợi ý",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              )),
          // Suggest
          SuggestWidget(),
        ],
      ),
    );
  }
}
