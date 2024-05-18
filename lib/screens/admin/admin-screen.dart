// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:my_project/screens/admin/Widget/bottomNavbarAdmin/bottom-navbar-admin.dart';
import 'package:my_project/screens/admin/Widget/productCardAdmin/product-card-admin.dart';
import 'package:my_project/screens/user/widget/searchBar/searchbar.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Screen'),
      ),
      body: Column(
        children: [
          const MySearchBAR(),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductCardAdmin(product: products[index]);
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavbarAdmin(),
    );
  }
}
