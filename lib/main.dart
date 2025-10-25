import 'package:flutter/material.dart';
import 'package:flutter_daily_challenges/day-1/product_details_screen/screen/product_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProductDetailsScreen(),
    );
  }
}
