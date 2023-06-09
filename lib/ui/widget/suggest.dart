import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/produCartManager.dart';
import '../../models/data_cart.dart';

class SuggestWidget extends StatefulWidget {
  const SuggestWidget({Key? key}) : super(key: key);

  @override
  _SuggestWidgetState createState() => _SuggestWidgetState();
}

class _SuggestWidgetState extends State<SuggestWidget> {
  final ProductsManagerSuggest _productsManager = ProductsManagerSuggest();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.separated(
        separatorBuilder: (context, index) =>
            const SizedBox(height: 20), // Tạo khoảng cách giữa các sản phẩm
        scrollDirection: Axis.vertical,
        itemCount:
            _productsManager.items.length, // Số lượng sản phẩm được đề xuất
        itemBuilder: (BuildContext context, int index) {
          final product = _productsManager
              .items[index]; // Lấy thông tin của sản phẩm tại vị trí index
          return Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white, // Màu nền của sản phẩm
              borderRadius:
                  BorderRadius.circular(10), // Bo tròn góc của sản phẩm
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Màu của bóng đổ
                  spreadRadius: 3, // Độ rộng bóng đổ
                  blurRadius: 10, // Độ mờ của bóng đổ
                  offset: const Offset(0, 3), // Vị trí bóng đổ
                )
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      product.imageUrl, // Link ảnh của sản phẩm
                      fit: BoxFit.cover, // Cách hiển thị ảnh
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        product.title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '${product.price} đồng',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.shopping_cart,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    final productCartManager =
                        context.read<ProductCartManager>();
                    productCartManager.addToCart(product);
                  }, // Hành động khi nhấn vào nút giỏ hàng
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
