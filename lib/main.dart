import 'package:flutter/material.dart';
import 'ui/pages/homepage.dart';
import 'ui/pages/product_detail.dart';


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
       scaffoldBackgroundColor: Color.fromARGB(255, 236, 221, 198)
      ),
      routes: {
        "/" : (context) => HomePage(),
      },
    );
  }
}


