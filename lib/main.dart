import 'package:flutter/material.dart';
import 'package:local_store_management/screens/add_product/add_product_screen.dart';
import 'package:local_store_management/screens/categories/categories_screen.dart';
import 'package:local_store_management/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Management App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/categories': (context) => CategoriesScreen(),
        '/add-product': (context) => AddProductScreen(),
      },
    );
  }
}
