import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jeu_themes/config/theme/extensions_theme.dart';
import 'package:jeu_themes/features/quiz/quiz_view_model.dart';
import '../../config/resources/values_manager.dart';
import 'widgets/button_widget.dart';
import 'widgets/quiz_check_button_widget.dart';

class QuizView extends StatelessWidget {
  QuizView({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              // background effect
              GetBuilder<QuizViewModel>(
                builder: (controller) {
                  return Container(
                    height: deviceSize.height,
                    decoration: BoxDecoration(
                      color: controller
                          .quizColors[controller.backgroundColorIndex]
                          .lightColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: AppSize.hs100 * 1.2,
                          decoration: BoxDecoration(
                            color: controller
                                .quizColors[controller.backgroundColorIndex]
                                .darkColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(AppSize.hs20 * 2),
                              bottomRight: Radius.circular(AppSize.hs20 * 2),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black45,
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
                                color: controller
                                    .quizColors[controller.backgroundColorIndex]
                                    .darkColor,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black45,
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
                                color: controller
                                    .quizColors[controller.backgroundColorIndex]
                                    .darkColor,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black45,
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
                                color: controller
                                    .quizColors[controller.backgroundColorIndex]
                                    .darkColor,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black45,
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
                                color: controller
                                    .quizColors[controller.backgroundColorIndex]
                                    .darkColor,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black45,
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
                                color: controller
                                    .quizColors[controller.backgroundColorIndex]
                                    .darkColor,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black45,
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
                                color: controller
                                    .quizColors[controller.backgroundColorIndex]
                                    .darkColor,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black45,
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
                  );
                },
              ),
              // row title
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: AppSize.hs20 * 1.5, horizontal: AppSize.ws10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: AppSize.hs20,
                      height: AppSize.ws20,
                    ),
                    Text("Jeu Themes",
                        style: GoogleFonts.rubikBubbles(
                            color: Colors.white, fontSize: AppSize.hs24)),
                    IconButton(
                      icon: Icon(
                        Icons.clear,
                        color: Colors.white,
                        size: AppSize.hs16 * 2,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
              // questions
              GetBuilder<QuizViewModel>(builder: (controller) {
                return Column(
                  children: [
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(
                          top: AppSize.hs100 * 1.4,
                          right: AppPadding.wp20,
                          left: AppPadding.wp20),
                      padding: EdgeInsets.symmetric(
                          vertical: AppSize.hs20, horizontal: AppSize.ws12),
                      decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.circular(AppSize.hs20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Question : ${controller.quizIndex + 1} / 10",
                            style: TextStyle(
                                fontSize: AppSize.hs24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(height: AppSize.hs20),
                          LinearProgressIndicator(
                            minHeight: AppSize.hs18,
                            backgroundColor: Colors.black26,
                            value: controller.quizStep,
                            borderRadius: BorderRadius.circular(AppSize.hs10),
                            color: Colors.white,
                          ),
                          SizedBox(height: AppSize.hs20),
                          Text(
                            controller.quizList[controller.quizIndex].question,
                            style: TextStyle(
                                fontSize: AppSize.hs18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    QuizCheckButtonWidget(
                      onPressed: () => controller.handleActiveQuize(0,
                          controller.quizList[controller.quizIndex].choiceTwo),
                      text: controller.quizList[controller.quizIndex].choiceOne,
                      topMarge: AppSize.hs20 * 2,
                      clicked: controller.activeQuizeOne,
                    ),
                    QuizCheckButtonWidget(
                      onPressed: () => controller.handleActiveQuize(1,
                          controller.quizList[controller.quizIndex].choiceTwo),
                      text: controller.quizList[controller.quizIndex].choiceTwo,
                      topMarge: AppSize.hs16,
                      clicked: controller.activeQuizeTwo,
                    ),
                    QuizCheckButtonWidget(
                      onPressed: () => controller.handleActiveQuize(2,
                          controller.quizList[controller.quizIndex].choiceTwo),
                      text:
                          controller.quizList[controller.quizIndex].choiceTree,
                      topMarge: AppSize.hs16,
                      clicked: controller.activeQuizeTree,
                    ),
                    QuizButtonWidget(
                      onPressed: () => controller.activeButton == true
                          ? controller.handleNextQuize(
                              controller.quizList[controller.quizIndex])
                          : {},
                      text: "Next",
                      topMarge: AppSize.hs20 * 3,
                      clicked: controller.activeButton,
                    ),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
