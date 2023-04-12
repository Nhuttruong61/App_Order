import 'package:apporderfood/models/food_product.dart';
import 'package:apporderfood/models/produCartManager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ui/pages/screen.dart';
import 'models/data_cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProductCartManager>(
          create: (_) => ProductCartManager(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: IntroPage(),
      ),
    );
  }
}
