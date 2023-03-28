import 'package:apporderfood/products/products_manager.dart';
import 'package:flutter/material.dart';
import 'ui/pages/screen.dart';


import 'products/products_manager.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepOrange) ,
       scaffoldBackgroundColor: Color.fromARGB(255, 236, 221, 198)
      ),
      routes: {
        // "/" : (context) =>ProductDetail(ProductsManagerPopurlar().items[1])
        "/":(context) => HomePage(),
      },
    );
  }
}


