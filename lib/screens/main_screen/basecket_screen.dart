
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BascketScreen extends StatefulWidget {
  const BascketScreen({super.key});

  @override
  State<BascketScreen> createState() => _BascketScreenState();
}

class _BascketScreenState extends State<BascketScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: Center(
        child: Text("basket"),
      ),
    ));
  }
}