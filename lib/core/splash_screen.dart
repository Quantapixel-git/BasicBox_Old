import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ecom2/features/onboarding/screens/onboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:gif_view/gif_view.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  static final route = "splash";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: GifView.asset(
          "assets/gif/splash.gif",
          fit: BoxFit.cover,
          loop: false,
          onFinish: () {
            Future.delayed(
              const Duration(seconds: 1),
            );

            context.goNamed(OnboardScreen.route);
          },
        ),
      ),
    );
  }
}
