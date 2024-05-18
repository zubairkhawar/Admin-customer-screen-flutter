// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_project/screens/user/AddtoCart/add-to-cart.dart';
import 'package:my_project/screens/user/user-screen.dart';
import 'package:my_project/utils/app-constant.dart';


class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  List<Widget> screens = const [
    UserScreen(title: ''),
    AddToCart(), 
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
              MaterialPageRoute(builder: (context) => UserScreen(title: '',)),
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
              MaterialPageRoute(builder: (context) => AddToCart()),
            );
            },
            icon: Icon(
              Icons.shopping_cart_outlined,
              size: 35,
              color: currentIndex == 1 ? AppConstant.appSecondaryColor : Colors.grey.shade400,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  AddToCart()),
            );
            },
            icon: Icon(
              Icons.person,
              size: 35,
              color: currentIndex == 2 ? AppConstant.appSecondaryColor : Colors.grey.shade400,
            ),
          ),
        ],
      ),
    );
  }
}
