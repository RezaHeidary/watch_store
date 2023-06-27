import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/component/button_style.dart';
import 'package:watch_store/component/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimens.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/widgets/main_button.dart';
import 'package:watch_store/widgets/my_text_field.dart';

import '../widgets/avatar.dart';

// ignore: must_be_immutable
class RegisterUser extends StatelessWidget {
  RegisterUser({super.key});
  TextEditingController codeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 64),
          child: Container(
           
            child: Padding(
              padding: const EdgeInsets.all(Dimens.lage),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: ()=>Navigator.pop(context), 
                    icon: Icon(Icons.arrow_back) )

                    ,
                    const Text(
                      Strings.register,
                      style: MyStyles.title,
                    )
                  ]),
            ),
          )),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          width: double.infinity,
           
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AvatarWidget(onTap: () {
                
              },
              text: Strings.chooseProfileImage,
              ),
      
              SizedBox(
                height: size.height / 7.7,
              ),
              MyTextField(
                  lable: Strings.nameLastName,
                  hint: Strings.hintNameLastName,
                  controller: codeController), 
              MyTextField(
                  lable: Strings.homeNumber,
                  hint: Strings.hintHomeNumber,
                  controller: codeController),
              MyTextField(
                  lable: Strings.address,
                  hint: Strings.hintAddress,
                  controller: codeController), 
              MyTextField(
                  lable: Strings.postalCode,
                  hint: Strings.hintPostalCode,
                  controller: codeController), 
              MyTextField(
                  icon: SvgPicture.asset(Assets.svg.location,height: 12, ),
                  lable: Strings.location,
                  hint: Strings.hintLocation,
                  controller: codeController), 
              MainButton(
                text: Strings.register,
                onTap: () {
                  Navigator.pushReplacementNamed(context, Screens.mainScreen);
                },
              ),
              const SizedBox(height: Dimens.lage*2,)
            ],
          ),
        ),
      ),
    ));
  }
}



