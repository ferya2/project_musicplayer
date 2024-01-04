import 'package:flutter/material.dart';
import 'package:spoticok_apk/constants/colors/colors.dart';
import 'package:spoticok_apk/constants/padding/padding.dart';
import 'package:spoticok_apk/constants/textstyle/textstyle.dart';
import 'package:spoticok_apk/view/welcomepage/spoticok_signup4.dart';

class SignUp3 extends StatefulWidget {
  const SignUp3({Key? key}) : super(key: key);

  @override
  State<SignUp3> createState() => _SignUp3State();
}

class _SignUp3State extends State<SignUp3> {
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
        color: ColorsCollection.bgColor,
        width: double.infinity,
        height: double.infinity,
        child: SizedBox(
          child: Padding(
            padding: CustomPadding.sidePadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 26.0),
                Text(
                  'What\'s your age?',
                  style: AppTextStyle.textStylepw,
                ),
                TextField(
                  decoration: InputDecoration(
                    fillColor: ColorsCollection.textField,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: const BorderSide(
                        width: 0.5,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 48.0),
                Center(
                  child: SizedBox(
                    height: 42,
                    width: 82,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUp4(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorsCollection.signBtn,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
