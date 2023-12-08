import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeu_themes/config/routing/routes_manager.dart';
import 'package:jeu_themes/config/theme/extensions_theme.dart';
import '../../config/resources/assets_manager.dart';
import '../../config/resources/values_manager.dart';
import 'widgets/button_widget.dart';

// ignore: must_be_immutable
class ResultQuizView extends StatelessWidget {
  int score;
  ResultQuizView({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          // background effect
          Container(
            height: deviceSize.height,
            decoration: BoxDecoration(
              color: score >= 5 ? Colors.green : Colors.amber.shade400,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: AppSize.hs100,
                  decoration: BoxDecoration(
                    color: score >= 5
                        ? Colors.green.shade700
                        : Colors.amber.shade700,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppSize.hs20 * 2),
                      bottomRight: Radius.circular(AppSize.hs20 * 2),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: AppSize.hs20,
                        offset: const Offset(0, 0),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: AppSize.ws100,
                      height: AppSize.hs100,
                      decoration: BoxDecoration(
                        color: score >= 5
                            ? Colors.green.shade700
                            : Colors.amber.shade700,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: AppSize.hs20,
                            offset: Offset(0, 0),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: AppSize.ws20 * 3,
                      height: AppSize.hs20 * 3,
                      decoration: BoxDecoration(
                        color: score >= 5
                            ? Colors.green.shade700
                            : Colors.amber.shade700,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: AppSize.hs20,
                            offset: Offset(0, 0),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: AppSize.ws20 * 3,
                      height: AppSize.hs20 * 3,
                      decoration: BoxDecoration(
                        color: score >= 5
                            ? Colors.green.shade700
                            : Colors.amber.shade700,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: AppSize.hs20,
                            offset: Offset(0, 0),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: AppSize.ws100,
                      height: AppSize.hs100,
                      decoration: BoxDecoration(
                        color: score >= 5
                            ? Colors.green.shade700
                            : Colors.amber.shade700,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: AppSize.hs20,
                            offset: Offset(0, 0),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: AppSize.ws100,
                      height: AppSize.hs100,
                      decoration: BoxDecoration(
                        color: score >= 5
                            ? Colors.green.shade700
                            : Colors.amber.shade700,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: AppSize.hs20,
                            offset: Offset(0, 0),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: AppSize.ws20 * 3,
                      height: AppSize.hs20 * 3,
                      decoration: BoxDecoration(
                        color: score >= 5
                            ? Colors.green.shade700
                            : Colors.amber.shade700,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: AppSize.hs20,
                            offset: Offset(0, 0),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // row title
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppSize.hs20 * 1.5, horizontal: AppSize.ws10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Quiz result",
                    style: GoogleFonts.rubikBubbles(
                        color: Colors.white, fontSize: AppSize.hs24)),
              ],
            ),
          ),
          //image
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: AppSize.hs100 * 1.2,
                ),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: AppSize.ws100,
                    offset: const Offset(0, 0),
                  )
                ]),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.6,
                  child: Image.asset(
                      score >= 5 ? AssetsManager.winner : AssetsManager.lost),
                ),
              ),
            ],
          ),
          //congratulation
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
                top: AppSize.hs100 * 3.2,
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
                  score >= 5 ? "Congratulation !" : "Sorry You Lost",
                  style: GoogleFonts.rubikBubbles(
                      fontSize: AppSize.hs14 * 2, color: Colors.white),
                ),
                SizedBox(height: AppSize.hs20),
                Text(
                  "Clean code always looks like it was writhen by someone who cares.",
                  style: TextStyle(
                      fontSize: AppSize.hs18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: AppSize.hs20),
                Text(
                  "YOU SCORE",
                  style: TextStyle(
                      fontSize: AppSize.hs18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      score.toString(),
                      style: GoogleFonts.rubikBubbles(
                          fontSize: AppSize.hs22 * 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      " / 10",
                      style: GoogleFonts.rubikBubbles(
                          fontSize: AppSize.hs22 * 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
          ),
          // button quiz
          QuizButtonWidget(
            onPressed: () => Get.toNamed(RoutesManager.quizScreen),
            text: "Play Again",
            topMarge: AppSize.hs100 * 6,
            isWinner: score >= 5 ? true : false,
          ),
          // go back
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white38,
                    border: Border.all(
                        color: Colors.white, width: AppSize.hs5 / 1.5)),
                margin: EdgeInsets.only(
                    top: AppSize.hs100 * 7,
                    right: AppPadding.wp20,
                    left: AppPadding.wp20),
                child: IconButton(
                  onPressed: () => Get.offNamed(RoutesManager.onboardingScreen),
                  icon: Icon(
                    Icons.clear,
                    color: Colors.white,
                    size: AppSize.hs16 * 2,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
