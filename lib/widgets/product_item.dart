import 'package:flutter/material.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/dimens.dart';

class ProductItem extends StatelessWidget {
    ProductItem({super.key});
  String title = "ساعت مردانه نیوفورس";
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height*.28,
      width: size.width*.34,
      decoration: BoxDecoration(
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        colors: [

        Color.fromARGB(255, 238, 238, 238),
        Color.fromARGB(255, 255, 255, 255),

      ]),
      borderRadius: BorderRadius.circular(Dimens.medium)
     ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Image.asset(
            Assets.png.unnamed.path,
            width: size.width*.36,
            height: size.height*.15),
 
 
      ],), 
    );
  }
}