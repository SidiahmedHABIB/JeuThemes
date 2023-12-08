import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeu_themes/config/routing/routes_manager.dart';
import '../../config/resources/assets_manager.dart';
import '../../config/resources/values_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Get.offNamed(RoutesManager.onboardingScreen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.green.shade700,
                  Colors.green.shade500,
                  Colors.white,
                  Colors.green.shade500,
                  Colors.green.shade700,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Jeu Themes",
                  style: GoogleFonts.rubikBubbles(
                    fontSize: AppSize.hs20 * 2,
                    color: Colors.green.shade700,
                  ),
                )
              ],
            ),
          ),
          // image
          Positioned(
            top: -AppSize.hs20,
            right: -AppSize.ws20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: AppSize.ws100 * 1.5,
                      offset: const Offset(0, 0),
                    )
                  ]),
                  child: Image.asset(AssetsManager.onboarding),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: -AppSize.hs20,
            left: -AppSize.ws20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: AppSize.ws100 * 1.5,
                      offset: const Offset(0, 0),
                    )
                  ]),
                  child: Image.asset(AssetsManager.spalshLeftBottom),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
