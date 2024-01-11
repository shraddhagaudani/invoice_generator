import 'dart:async';

import 'package:flutter/material.dart';

import '../../utills/image_utills.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({Key? key}) : super(key: key);

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(
        'Login_page',
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagepath + invoice,
              height: 850,
              width: 850,
            ),
          ],
        ),
      ),
    );
  }
}
