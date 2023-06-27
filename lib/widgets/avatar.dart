import 'package:flutter/material.dart';
import 'package:watch_store/component/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/dimens.dart';

class AvatarWidget extends StatelessWidget {
  void Function() onTap;
  String text;

  AvatarWidget({required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(79),
              child: Image.asset(
                Assets.png.avatar.path,
                width: 79,
                height: 79,
              )),
          const SizedBox(
            height: Dimens.medium,
          ),
          Text(
            text,
            style: MyStyles.title,
          )
        ],
      ),
    );
  }
}