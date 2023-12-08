import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeu_themes/config/routing/routes_manager.dart';
import '../../config/resources/assets_manager.dart';
import '../../config/resources/values_manager.dart';
import 'widgets/button_widget.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

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
                  Colors.green.shade700,
                  Colors.green.shade700,
                  Colors.white,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
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
          // discription
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
                top: AppSize.hs100 * 4,
                right: AppPadding.wp20,
                left: AppPadding.wp20),
            padding: EdgeInsets.symmetric(
              vertical: AppSize.hs20,
              horizontal: AppSize.ws12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Bienvenue dans l'application jeu thèmes !",
                  style: GoogleFonts.rubikBubbles(
                    fontSize: AppSize.hs24,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: AppSize.hs16),
                Text(
                  "éduquer les utilisateurs sur les enjeux liés au changement climatique à travers des quizzes interactifs .",
                  style: TextStyle(
                      fontSize: AppSize.hs16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),

          OnboardingButtonWidget(
            onPressed: () => Get.toNamed(RoutesManager.quizScreen),
            text: "Get started",
            topMarge: AppSize.hs100 * 6.8,
          )
        ],
      ),
    );
  }
}
