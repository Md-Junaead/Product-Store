// product_service.dart
import 'package:flutter/foundation.dart';
import 'package:local_store_management/models/product_model.dart';

class ProductService with ChangeNotifier {
  final List<Product> _products = [];

  // Fetch all products
  List<Product> get products => [..._products];

  // Add a new product
  void addProduct(Product product) {
    _products.add(product);
    notifyListeners();
  }

  // Edit an existing product
  void editProduct(String id, Product updatedProduct) {
    final productIndex = _products.indexWhere((prod) => prod.id == id);
    if (productIndex >= 0) {
      _products[productIndex] = updatedProduct;
      notifyListeners();
    }
  }

  // Delete a product
  void deleteProduct(String id) {
    _products.removeWhere((prod) => prod.id == id);
    notifyListeners();
  }

  // Get a single product by ID
  Product getProductById(String id) {
    return _products.firstWhere(
      (prod) => prod.id == id,
      orElse: () => Product(
        id: '0', // Default ID for a non-existing product
        title: 'Unknown Product', // Default title
        description: 'No description available', // Default description
        price: 0.0, // Default price
        category: 'Unknown', // Default category
      ),
    );
  }
}
