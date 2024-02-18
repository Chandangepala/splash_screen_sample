import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash_screen_sample/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Image.network(
                "https://p7.hiclipart.com/preview/180/516/952/apple-logo-computer-icons-clip-art-iphone-apple.jpg"
              ),
            ),
            SizedBox(height: 10,),
            const Text("Apple", style: TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
