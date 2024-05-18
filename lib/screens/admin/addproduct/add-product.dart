// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, 
        title: Text(
          'Add Product', 
          style: TextStyle(
            color: Colors.black, 
          ),
        ),
      ),
      body: Placeholder(),
    );
  }
}
