import 'package:flutter/material.dart';
import 'package:spoticok_apk/view/welcomepage/spoticok_signup2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUp2(),
    );
  }
}
