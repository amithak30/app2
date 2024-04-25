// screens/home_screen.dart

import 'package:flutter/material.dart';
import 'package:app2/screens/cart_screen.dart';
import 'package:app2/screens/categories_screen.dart';
import 'package:app2/screens/deals_screen.dart';
import 'package:app2/screens/profile_screen.dart';
//import 'package:';

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
            // Implement bell icon functionality
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/img1.png', // Provide the path to your image asset
              width: MediaQuery.of(context)
                  .size
                  .width, // Adjust the width as needed
              height: MediaQuery.of(context)
                  .size
                  .height, // Adjust the height as needed
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to My App',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
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
        currentIndex: 0,
        selectedItemColor: Color.fromARGB(255, 12, 47, 247),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement chat functionality
        },
        tooltip: 'Chat',
        child: Icon(Icons.chat),
      ),
    );
  }
}
