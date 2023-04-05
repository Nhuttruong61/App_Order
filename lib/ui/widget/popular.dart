import 'package:flutter/material.dart';
import '../../products/products_manager.dart';

class PopularItem extends StatelessWidget {
  final ProductsManagerPopurlar _productsManager = ProductsManagerPopurlar();

  PopularItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 7), // Tạo khoảng cách giữa các sản phẩm
        scrollDirection: Axis.horizontal, // Hiển thị sản phẩm theo chiều ngang
        itemCount: _productsManager.items.length, // Số lượng sản phẩm trong danh sách
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
                  offset: const Offset(0, 3),
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
                  const SizedBox(height: 10), // Tạo khoảng cách giữa ảnh và tiêu đề sản phẩm
                  Text(
                    product.title, // Hiển thị tiêu đề sản phẩm
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5), // Tạo khoảng cách giữa tiêu đề và giá sản phẩm
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${product.price.toString()} đồng', // Hiển thị giá của sản phẩm
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.shopping_cart, // Hiển thị biểu tượng giỏ hàng
                          color: Colors.red,
                        ),
                        onPressed: () {}, // Hành động khi nhấn vào biểu tượng giỏ hàng
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
