import 'package:flutter/material.dart';
import '../../../config/resources/values_manager.dart';

// ignore: must_be_immutable
class QuizCheckButtonWidget extends StatelessWidget {
  final String text;
  final bool clicked;
  final double topMarge;
  VoidCallback onPressed;
  QuizCheckButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
    required this.topMarge,
    required this.clicked,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          height: AppSize.hs20 * 3,
          width: double.maxFinite,
          margin: EdgeInsets.only(
              top: topMarge, right: AppPadding.wp20, left: AppPadding.wp20),
          decoration: BoxDecoration(
            border: clicked == true
                ? Border.all(color: Colors.white, width: AppSize.hs5 / 1.5)
                : null,
            color: Colors.white38,
            borderRadius: BorderRadius.circular(AppSize.hs20),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: AppSize.hs24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
