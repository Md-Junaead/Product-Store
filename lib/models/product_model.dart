// product_model.dart
class Product {
  final String id; // Unique identifier for each product
  final String title; // Product title
  final String description; // Product description
  final double price; // Product price
  final String category; // Product category (e.g., Shirt, T-shirt, Pant, Shoe)

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.category,
  });

  // Converts a Product object to a map for storage (e.g., in Hive or Firebase)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'category': category,
    };
  }

  // Creates a Product object from a map
  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      price: map['price'],
      category: map['category'],
    );
  }
}
