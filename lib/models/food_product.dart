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

  static Product fromJson(Map<String, dynamic> json) {
    return Product(
      id: json["id"],
      title: json['title'],
      description: json['description'],
      price: json['price'],
      imageUrl: json['imageUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
    };
  }
}
