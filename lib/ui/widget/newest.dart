import 'package:flutter/material.dart';
import '../../products/products_manager.dart';

class NewestItem extends StatelessWidget {
  final ProductsManagerNestItem _productsManager =ProductsManagerNestItem();

  NewestItem({super.key});

  @override
   Widget build(BuildContext context) {
    return SizedBox(
      height: 225,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 7),
        scrollDirection: Axis.horizontal,
        itemCount: _productsManager.items.length,
        itemBuilder: (BuildContext context, int index) {
          final product = _productsManager.items[index];
          return Container(
            width: 170,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        product.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    product.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${product.price.toString()} đồng',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.shopping_cart,
                          color: Colors.red,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
          
        },
      ),
    );
  }
}