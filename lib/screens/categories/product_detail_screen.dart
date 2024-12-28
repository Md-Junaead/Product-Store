import 'package:flutter/material.dart';
import 'package:local_store_management/models/product_model.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  // Constructor to receive product data
  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Category: ${product.category}'),
            SizedBox(height: 8),
            Text('Price: \$${product.price}'),
            SizedBox(height: 8),
            Text('Description: ${product.description}'),
          ],
        ),
      ),
    );
  }
}
