import 'package:flutter/material.dart';
import 'package:my_project/screens/admin/admin-screen.dart';
import 'package:my_project/screens/user/user-screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white10),
        useMaterial3: true,
      ),
      home: const AdminScreen(title: 'MyApp',)
    );
  }
}
