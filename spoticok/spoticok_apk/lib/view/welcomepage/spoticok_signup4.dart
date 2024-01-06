import 'package:flutter/material.dart';
import 'package:spoticok_apk/constants/colors/colors.dart';
import 'package:spoticok_apk/constants/textstyle/textstyle.dart';
import 'package:spoticok_apk/view/loginpage/spoticok_chooseartist.dart';

class SignUp4 extends StatefulWidget {
  const SignUp4({Key? key}) : super(key: key);

  @override
  State<SignUp4> createState() => _SignUp4State();
}

class _SignUp4State extends State<SignUp4> {
  bool newsAndOffers = false;
  bool shareData = false;

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
        color: ColorsCollection.blackGrey,
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 26.0),
                    Text('What\'s your name?', 
                      style: AppTextStyle.names4TextStyle),
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
                    const SizedBox(height: 4),
                    Text(
                      'This appears on your spotify profile',
                      style: AppTextStyle.reqs4TextSyle,
                    ),
                    const SizedBox(height: 30.0),
                    Divider(
                      color: ColorsCollection.whiteNeutral,
                    ),
                    const SizedBox(height: 25.0),
                    Text(
                      'By tapping on “Create account”, you agree to the spotify Terms of Use.',
                      style: AppTextStyle.reqs4TextSyle,
                    ),
                    const SizedBox(height: 25.0),
                    Text(
                      'Terms of Use',
                      style: AppTextStyle.reqs4_2TextSyle,
                    ),
                    const SizedBox(height: 25.0),
                    Text(
                      'To learn more about how Spotify collect, uses, shares and protects your personal data, Please see the Spotify Privacy Policy.',
                      style: AppTextStyle.reqs4TextSyle,
                    ),
                    const SizedBox(height: 25.0),
                    Text(
                      'Privacy Policy',
                      style: AppTextStyle.reqs4_2TextSyle,
                    ),
                    Column(
                      children: <Widget>[
                        const SizedBox(height: 25.0),
                        buildRow('Please send me news and offers from Spotify',
                            newsAndOffers),
                        const SizedBox(height: 15.0),
                        buildRow(
                            'Share my registration data with Spotify\’s content providers for marketing purposes',
                            shareData),
                      ],
                    ),
                    const SizedBox(height: 250.0),
                    Center(
                      child: SizedBox(
                        height: 42,
                        width: 179,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ChooseArtist(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorsCollection.reqs4CreateBtn,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(21.0),
                            ),
                          ),
                          child: Text(
                            'Create an account',
                            style: AppTextStyle.btnCreateAccTextStyle,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRow(String text, bool value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                if (text.contains('news and offers')) {
                  newsAndOffers = !newsAndOffers;
                } else if (text.contains('marketing purposes')) {
                  shareData = !shareData;
                }
              });
            },
            child: Container(
              width: 20.0,
              height: 20.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: value ? ColorsCollection.greenNeutral : ColorsCollection.transparent,
                border: Border.all(
                  color: value ? ColorsCollection.greenNeutral : ColorsCollection.checkMarkOutline,
                  width: 2.0,
                ),
              ),
              child: value
                  ? Icon(
                      Icons.check,
                      size: 16.0,
                      color: ColorsCollection.whiteNeutral,
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
