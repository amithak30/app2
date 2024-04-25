import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Text('Profile Screen'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Deals',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        unselectedItemColor: Colors.grey,
        currentIndex: 4,
        selectedItemColor: Colors.blue,
        onTap: (index) {
          switch (index) {
            case 0:
              // Navigate to Home screen
              Navigator.pushNamed(context, 'MyHomeScreen');
              break;
            case 1:
              // Navigate to Categories screen
              Navigator.pushNamed(context, 'CategoriesScreen');
              break;
            case 2:
              // Navigate to Deals screen
              Navigator.pushNamed(context, 'DealsScreen');
              break;
            case 3:
              // Navigate to Cart screen
              Navigator.pushNamed(context, 'CartScreen');
              break;
            case 4:
              // Navigate to Profile screen
              Navigator.pushNamed(context, 'ProfileScreen');
              break;
          }
        },
      ),
    );
  }
}
