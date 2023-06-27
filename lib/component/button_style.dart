



import 'package:flutter/material.dart';
import 'package:watch_store/res/dimens.dart';

abstract class ButtonStyles{

  static ButtonStyle mainButton = ButtonStyle(
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.medium)
      )
      )
  );

}