import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/out.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Food'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Hàm callback để xử lý sự kiện nhấn vào biểu tượng giỏ hàng
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          const SearchBarWidget(),

          // popular Items
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 20, bottom: 10),
            child: Text(
              "Phổ biến",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          PopularItem(),
          // Newest
          const Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                "Gợi ý",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
          // Suggest
          SuggestWidget(),
        ],
      ),
    );
  }
}
