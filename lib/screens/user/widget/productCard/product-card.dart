// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:my_project/utils/app-constant.dart';
import 'package:my_project/models/product-model.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Container(
        color: AppConstant.appMainColor,
        padding: EdgeInsets.all(16.0), 
        height: 500, 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  // DP 
                  backgroundColor: Colors.grey,
                  radius: 20.0,
                ),
                SizedBox(width: 8.0),
                Text(
                  'Zubair', 
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  onPressed: () {
                  },
                ),
              ],
            ),
            // Category
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                product.category,
                style: TextStyle(
                  fontWeight: FontWeight.normal, 
                  fontSize: 18, 
                ),
              ),
            ),
             
            Expanded(
              child: Image.asset(
                product.imagePath,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            // Description
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                product.description,
                style: TextStyle(fontSize: 16),
                ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Product> products = [
  Product(
    name: 'Product 1',
    category: 'Category 1',
    description: 'Description of Product 1',
    imagePath: 'images/image1.jpeg',
  ),
  Product(
    name: 'Product 2',
    category: 'Category 2',
    description: 'Description of Product 2',
    imagePath: 'images/image2.jpeg',
  ),
  Product(
    name: 'Product 3',
    category: 'Category 3',
    description: 'Description of Product 3',
    imagePath: 'images/image3.jpeg',
  ),
  Product(
    name: 'Product 4',
    category: 'Category 3',
    description: 'Description of Product 4 Description of Product 5 Description of Product 5',
    imagePath: 'images/image4.jpeg',
  ),
  Product(
    name: 'Product 5',
    category: 'Category 3',
    description: 'Description of Product 5 Description of Product 5 Description of Product 5',
    imagePath: 'images/image1.png',
  ),
  Product(
    name: 'Product 6',
    category: 'Category 3',
    description: 'Description of Product 6',
    imagePath: 'images/image6.jpeg',
  ),
];


