import 'package:flutter/material.dart';
import 'package:spoticok_apk/constants/colors/colors.dart';
import 'package:spoticok_apk/constants/padding/padding.dart';
import 'package:spoticok_apk/constants/textstyle/textstyle.dart';
import 'package:spoticok_apk/view/welcomepage/spoticok_signup3.dart';

class SignUp2 extends StatefulWidget {
  const SignUp2({Key? key}) : super(key: key);

  @override
  State<SignUp2> createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorsCollection.bgColor,
        title: Text('Create Account', style: AppTextStyle.appBarTitleStyle),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                ColorsCollection.bgCircleIcon,
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
        color: ColorsCollection.bgColor,
        width: double.infinity,
        height: double.infinity,
        child: SizedBox(
          child: Padding(
            padding: CustomPadding.SidePadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 26.0), 
                Text(
                  'Create a password',
                  style: AppTextStyle.textStylepw,
                ),
                TextField(
                  decoration: InputDecoration(
                    fillColor: ColorsCollection.textField,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        width: 0.5,
                      ),
                    ),
                  ),
                ), 
                Text(
                  'Use at least 8 characters.',
                  style: AppTextStyle.textStylepwsm,
                ),
                SizedBox(height: 30.0),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp3(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: ColorsCollection.signBtn,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(21.0),
                      ),
                    ),
                    child: Text(
                      'Next',
                      style: AppTextStyle.textStylepwbtn,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
