// elevated_button_widget.dart

import 'package:flutter/material.dart';
import 'package:spoticok_apk/constants/colors/colors.dart';
import 'package:spoticok_apk/constants/padding/padding.dart';
import 'package:spoticok_apk/constants/textstyle/textstyle.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String imagePath;
  final String buttonText;

  // ignore: prefer_const_constructors_in_immutables
  ElevatedButtonWidget(
      {super.key, required this.imagePath, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: CustomPadding.kSidePadding,
      width: double.infinity,
      height: 49,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: ColorsCollection.whiteNeutral),
            borderRadius: BorderRadius.circular(30),
          ),
          backgroundColor: ColorsCollection.blackNeutral,
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(
              image: AssetImage(imagePath),
              height: 24,
              width: 24,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                buttonText,
                style: AppTextStyle.btnsignup2TextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
