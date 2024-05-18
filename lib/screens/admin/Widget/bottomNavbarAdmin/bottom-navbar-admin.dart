// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_project/screens/admin/NoOfOrders/no-of-orders.dart';
import 'package:my_project/screens/admin/addproduct/add-product.dart';
import 'package:my_project/screens/admin/admin-screen.dart';
import 'package:my_project/utils/app-constant.dart';

class BottomNavbarAdmin extends StatefulWidget {
  const BottomNavbarAdmin({super.key});

  @override
  State<BottomNavbarAdmin> createState() => _BottomNavbarAdminState();
}

class _BottomNavbarAdminState extends State<BottomNavbarAdmin> {
  List<Widget> screens = const [
    AdminScreen(title: '',),
    AddProduct(), 
    NoOfOrders(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 1,
      height: 60,
      color: Colors.white,
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround, 
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AdminScreen(title: '',)),
            );
            },
            icon: Icon(
              Icons.home,
              size: 35,
              color: currentIndex == 0 ? AppConstant.appSecondaryColor : Colors.grey.shade400,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddProduct()),
            );
            },
            icon: Icon(
              Icons.add_box_outlined, 
              size: 35,
              color: currentIndex == 1 ? AppConstant.appSecondaryColor : Colors.grey.shade400,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NoOfOrders()),
              );
            },
            icon: Icon(
              Icons.shopping_bag_outlined, 
              size: 35,
              color: currentIndex == 2 ? AppConstant.appSecondaryColor : Colors.grey.shade400,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddProduct()),
            );
            },
            icon: Icon(
              Icons.person,
              size: 35,
              color: currentIndex == 3 ? AppConstant.appSecondaryColor : Colors.grey.shade400,
            ),
          ),
        ],
      ),
    );
  }
}
