// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:my_project/screens/user/widget/bottomNavbar/bottom-navbar.dart';
import 'package:my_project/screens/user/widget/productCard/product-card.dart';
import 'package:my_project/screens/user/widget/searchBar/searchbar.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Screen'),
      ),
      body: Column(
        children: [
          const MySearchBAR(),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductCard(product: products[index]);
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavbar(),
    );
  }
}
