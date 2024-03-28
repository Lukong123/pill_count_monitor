import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pcm/screens/auth/sign_in.dart';
import 'package:pcm/screens/onboarding/onboarding_screen.dart';
import 'package:pcm/utils/styles/app_colors.dart';
import 'package:pcm/utils/styles/assets_strings.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.secondaryDark),
      body: Container(
        color: AppColors.secondaryDark,
        child: Center(
          child: SvgPicture.asset(ImageAssets.logowName),
        ),
      ),
    );
  }

  void navigate() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(
        () => const OnBoarding(),
        duration: const Duration(milliseconds: 1200),
        curve: Curves.linearToEaseOut,
        transition: Transition.fadeIn,
      );
    });
  }
}
