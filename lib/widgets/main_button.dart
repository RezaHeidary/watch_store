
import 'package:flutter/material.dart';
import 'package:watch_store/component/button_style.dart';
import 'package:watch_store/component/text_style.dart';
import 'package:watch_store/res/strings.dart';

class MainButton extends StatelessWidget {
  void Function() onTap;
  String text;
  MainButton({
    required this.onTap,
    required this.text,
    });

  @override
  Widget build(BuildContext context) {
        var size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * .07,
      width: size.width * .75,
      child: ElevatedButton(
          style: ButtonStyles.mainButton,
          onPressed: onTap,
          child:   Text(
            text,
            style: MyStyles.buttonText,
          )),
    );
  }
}