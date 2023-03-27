import '../models/food_product.dart';

class ProductsManagerPopurlar {
  final List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Hamburger',
      description: 'Món ăn nhanh tiện dụng',
      price: 39000,
      imageUrl:
          "https://beptruong.edu.vn/wp-content/uploads/2013/04/hamburger-han-quoc-thanh-pham-ngon-600x400.jpg",
    ),
    Product(
      id: 'p2',
      title: 'Sushi',
      description:
          'Là một món ăn Nhật Bản gồm cơm trộn giấm (shari) kết hợp với các nguyên liệu khác (neta).',
      price: 200000,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Sushi_platter.jpg/300px-Sushi_platter.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Ramen',
      description:
          'Món này bao gồm mì làm từ lúa mì của Trung Quốc được phục vụ với thịt hoặc (thỉnh thoảng) nước dùng làm từ cá, thường có hương vị với nước tương hoặc miso, và sử dụng các lớp phủ như thịt lợn thái mỏng (叉 焼, xá xíu), nori (rong biển sấy khô), menma, và hành lá.',
      price: 99000,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dc/Shoyu_Ramen.jpg/1200px-Shoyu_Ramen.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Bánh Mì VN',
      description:
          'Là một loại thức ăn đường phố của Việt Nam bao gồm vỏ là một ổ bánh mì nướng có da giòn, ruột mềm; bên trong là phần nhân.',
      price: 15000,
      imageUrl:
          'https://images.foody.vn/res/g104/1030781/prof/s640x400/foody-upload-api-foody-mobile-foody-upload-api-foo-200619091742.jpg',
    ),
  ];

  int get itemCount {
    return _items.length;
  }

  List<Product> get items {
    return [..._items];
  }
}

class ProductsManagerNestItem {
  final List<Product> _items = [
    Product(
      id: 'a1',
      title: 'Bánh canh',
      description: 'Được làm từ bột gạo, bột mì, hoặc bột sắn hoặc bột gạo pha bột sắn cán thành tấm và cắt ra thành sợi to và ngắn với nước dùng được nấu từ tôm, cá, giò heo... thêm gia vị tùy theo từng loại',
      price: 25000,
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Banh-Canh-Noodle-Soup.jpg/180px-Banh-Canh-Noodle-Soup.jpg",
    ),
    Product(
      id: 'a2',
      title: 'Bánh đa cua',
      description:
          'Bánh đa với nước dùng riêu cua',
      price: 50000,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/BANH_DA_CUA_1.jpg/180px-BANH_DA_CUA_1.jpg',
    ),
    Product(
      id: 'a3',
      title: 'Bánh tằm cà ri',
      description:
          'Bún gạo đặc biệt dùng với cà ri gà cay',
      price: 30000,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/B%C3%A1nh_t%E1%BA%B1m_c%C3%A0_ri.jpg/180px-B%C3%A1nh_t%E1%BA%B1m_c%C3%A0_ri.jpg',
    ),
    Product(
      id: 'a4',
      title: 'Bún bung',
      description:
          'Bún nấu với sườn lợn và dọc mùng',
      price: 25000,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/B%C3%BAn_m%E1%BB%8Dc_s%C6%B0%E1%BB%9Dn.jpg/180px-B%C3%BAn_m%E1%BB%8Dc_s%C6%B0%E1%BB%9Dn.jpg',
    ),
  ];
    int get itemCount {
    return _items.length;
  }

  List<Product> get items {
    return [..._items];
  }
}
