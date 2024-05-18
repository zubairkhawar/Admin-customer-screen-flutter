// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({super.key});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, 
        title: Text(
          'Cart', 
          style: TextStyle(
            color: Colors.black, 
          ),
        ),
      ),
      body: Placeholder(),
    );
  }
}