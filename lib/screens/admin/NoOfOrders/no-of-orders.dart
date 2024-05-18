// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class NoOfOrders extends StatefulWidget {
  const NoOfOrders({super.key});

  @override
  State<NoOfOrders> createState() => _NoOfOrdersState();
}

class _NoOfOrdersState extends State<NoOfOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, 
        title: Text(
          'No. Of Orders', 
          style: TextStyle(
            color: Colors.black, 
          ),
        ),
      ),
      body: Placeholder(),
    );
  }
}