import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
        child: Scaffold(
      body: Center(
        child: ElevatedButton(onPressed:  () {
          Navigator.pop(context);
        } , child: const Text("Product List Back")),
      ),
    ));
  }
}
