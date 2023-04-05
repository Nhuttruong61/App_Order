import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/out.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const AppBarWidget(),
          // search
          const SearchBarWidget(),
          // category
          const Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                "Loại",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
          // CategoriesWiget(),
          const CategoriesWiget(),
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
            padding: EdgeInsets.only(top: 20, left: 20, bottom: 10),
            child: Text(
              "Mới nhất",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          NewestItem(),
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
