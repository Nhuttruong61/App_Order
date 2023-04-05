import 'package:flutter/material.dart';
import '../widget/out.dart';
import '../../models/food_product.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail(this.product, {super.key});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const AppBarWidget(),
          Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: Text(
                product.title,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
          Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: Image.network(product.imageUrl, fit: BoxFit.cover),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '\$${product.price} đồng',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    width: double.infinity,
                    child: Text(
                      product.description,
                      textAlign: TextAlign.center,
                      softWrap: true,
                    ),
                  )
                ],
              )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:16),
                child: ElevatedButton(
                  onPressed: (){

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    textStyle: const TextStyle(fontSize: 16, ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text('Thêm vào giỏ hàng'),
                ),
              )
        ],
      ),
    );
  }
}
