import 'package:flutter/material.dart';
import 'package:watch_store/component/button_style.dart';
import 'package:watch_store/component/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/widgets/my_text_field.dart';

// ignore: must_be_immutable
class SendOtpScreen extends StatelessWidget {
  SendOtpScreen({super.key});
  TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(Assets.png.mainLogo.path),
            SizedBox(
              height: size.height / 7.7,
            ),
            MyTextField(
                lable: Strings.enterYourNumber,
                hint: Strings.hintPhoneNumber,
                controller: phoneNumberController),
            SizedBox(
              height: size.height * .07,
              width: size.width * .75,
              child: ElevatedButton(
                  style: ButtonStyles.mainButton,
                  onPressed:()=> Navigator.pushReplacementNamed(context, Screens.getOtpScreen),
                  child: const Text(
                    Strings.sendOtpCode,
                    style: MyStyles.buttonText,
                  )),
            )
          ],
        ),
      ),
    ));
  }
}
