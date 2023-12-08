import 'package:flutter/material.dart';
import '../../../config/resources/values_manager.dart';

// ignore: must_be_immutable
class QuizButtonWidget extends StatelessWidget {
  final String text;
  final double topMarge;
  final bool isWinner;
  VoidCallback onPressed;
  QuizButtonWidget(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.topMarge,
      required this.isWinner});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: AppSize.hs20 * 3,
        width: double.maxFinite,
        margin: EdgeInsets.only(
          top: topMarge,
          right: AppPadding.wp20,
          left: AppPadding.wp20,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppSize.hs20),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: AppSize.hs24,
                fontWeight: FontWeight.bold,
                color: isWinner == true ? Colors.green.shade700 : Colors.amber),
          ),
        ),
      ),
    );
  }
}
