import 'package:flutter/material.dart';
import 'package:local_store_management/models/product_model.dart';
import 'package:local_store_management/screens/categories/product_detail_screen.dart'; // Import the new screen
import 'package:local_store_management/widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  final List<Product> products = [
    // Sample product data
    Product(
      id: '1',
      title: 'Men\'s Shirt',
      description: 'A comfortable cotton shirt',
      price: 25.99,
      category: 'Shirt',
    ),
    Product(
      id: '2',
      title: 'Running Shoes',
      description: 'Lightweight running shoes for daily use',
      price: 59.99,
      category: 'Shoe',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Categories'),
              onTap: () {
                // Navigate to Categories Screen
                Navigator.pushNamed(context, '/categories');
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                // Navigate to Settings Screen
                Navigator.pushNamed(context, '/settings');
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(
            product: products[index],
            onTap: () {
              // Navigate to ProductDetailScreen when a product card is tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(
                    product: products[index],
                  ),
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        onTap: (index) {
          // Handle bottom navigation tap
          switch (index) {
            case 0:
              // Home tapped
              break;
            case 1:
              // Navigate to Categories screen
              Navigator.pushNamed(context, '/categories');
              break;
            case 2:
              // Navigate to Settings screen
              Navigator.pushNamed(context, '/settings');
              break;
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to Add Product Screen
          Navigator.pushNamed(context, '/add-product');
        },
        child: Icon(Icons.add),
        tooltip: 'Add Product',
      ),
    );
  }
}
