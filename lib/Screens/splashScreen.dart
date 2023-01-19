import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:u_cook/Styles/colors.dart';

import 'AuthScreens/onboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: Center(
        child: Image.asset('assets/icons/mainLogo.png'),
      ),
    );
  }

  void navigate() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const Onboard(), transition: Transition.circularReveal);
    });
  }
}
