import 'package:flutter/material.dart';
import 'package:watch_store/component/text_style.dart';
import 'package:watch_store/res/dimens.dart';

class MyTextField extends StatelessWidget {

  String lable;
  String hint;
  TextEditingController controller;
  Widget icon;
  TextInputType? inputType;
  MyTextField(
      {
      super.key,
      required this.lable,
      required this.hint,
      required this.controller,
      this.inputType,
      this.icon = const SizedBox()
      });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimens.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            lable,
            style: MyStyles.title,
          ),
          const SizedBox(
            height: Dimens.medium,
          ),
          SizedBox(
          height:size.height*.07,
          width:size.width*.75,
            child: TextField(
              
              textAlign: TextAlign.center,
              controller: controller,
              keyboardType: inputType,
              decoration: InputDecoration(
                prefixIcon: icon,
                
                hintText: hint),
            ),
          )
        ],
      ),
    );
  }
}
