import 'package:flutter/material.dart';
import 'package:spoticok_apk/constants/colors/colors.dart';
import 'package:spoticok_apk/constants/padding/padding.dart';
import 'package:spoticok_apk/constants/textstyle/textstyle.dart';

class SignUp1 extends StatelessWidget {
  const SignUp1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorsCollection.blackGrey,
        title: Text('Create Account', style: AppTextStyle.appbarTextStyle),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                ColorsCollection.blackGrey,
                BlendMode.hue,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: ColorsCollection.blackNeutral,
                  backgroundImage: const AssetImage('images/ic_back.png'),
                ),
              )),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: ColorsCollection.blackGrey,
          child: Padding(
            padding: CustomPadding.signUpSidePadding,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(height: 26),
              Text('What\'s your email?',
                  style: AppTextStyle.emailignup2TextStyle),
              TextField(
                decoration: InputDecoration(
                  focusColor: ColorsCollection.abuTextField,
                  focusedBorder:
                      const OutlineInputBorder(borderSide: BorderSide.none),
                  enabledBorder:
                      const OutlineInputBorder(borderSide: BorderSide.none),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  )),
                  filled: true,
                  fillColor: ColorsCollection.abuTextField,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'You\'ll need to confirm this email later.',
                style: AppTextStyle.textSubsignup2TextStyle,
              ),
              const SizedBox(height: 30),
              Center(
                child: SizedBox(
                  height: 42,
                  width: 82,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorsCollection.abuBtnText,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        )),
                    onPressed: () {},
                    child: Text(
                      'Next',
                      style: AppTextStyle.btnCreateAccTextStyle,
                    ),
                  ),
                ),
              ),
            ]),
          )),
    );
  }
}
