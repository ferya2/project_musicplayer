// welcome_page.dart

import 'package:flutter/material.dart';
import 'package:spoticok_apk/constants/bottomnav/bottomnav.dart';
import 'package:spoticok_apk/constants/colors/colors.dart';
import 'package:spoticok_apk/constants/elevatedbutton/elevated_button_welcome.dart';
import 'package:spoticok_apk/constants/padding/padding.dart';
import 'package:spoticok_apk/constants/textstyle/textstyle.dart';
import 'package:spoticok_apk/view/welcomepage/spoticok_signup1.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background1.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                const Image(image: AssetImage('images/Logo.png')),
                const SizedBox(height: 18),
                Text(
                  'Millions of Songs.',
                  style: AppTextStyle.welcomeTextStyle,
                  overflow: TextOverflow.clip,
                ),
                Text(
                  'Free on Spoticok.',
                  style: AppTextStyle.welcomeTextStyle,
                  overflow: TextOverflow.clip,
                ),
              ],
            ),
            const SizedBox(height: 25),
            Container(
              padding: CustomPadding.kSidePadding,
              width: double.infinity,
              height: 49,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: ColorsCollection.greenNeutral,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignUp1()));
                },
                child: Text(
                  'Sign Up Free',
                  style: AppTextStyle.btnsignup1TextStyle,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButtonWidget(
                imagePath: 'images/google.png',
                buttonText: 'Continue with Google'),
            const SizedBox(height: 6),
            ElevatedButtonWidget(
                imagePath: 'images/facebook.png',
                buttonText: 'Continue with Facebook'),
            const SizedBox(height: 6),
            ElevatedButtonWidget(
                imagePath: 'images/apple.png',
                buttonText: 'Continue with Apple'),
            const SizedBox(height: 6),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomNavBar(),
                    ));
              },
              child: Text(
                'Log in',
                style: AppTextStyle.btnsignup2TextStyle,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
