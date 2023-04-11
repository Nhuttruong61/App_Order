class Product {
  final String? id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;

  Product({
    this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

 Product.fromMap(Map<dynamic, dynamic> res)
      : id = res['id'],
        title = res['title'],
        description = res['description'],
        price = res['price'].toDouble(),
        imageUrl = res['imageUrl'];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
    };
  }

}
