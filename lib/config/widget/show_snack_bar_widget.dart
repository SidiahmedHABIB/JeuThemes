import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jeu_themes/config/resources/values_manager.dart';

void showSnackBarWidget(String message, Color colorbg,
    {bool isError = true, String title = "Error"}) {
  Get.snackbar(
    title,
    message,
    titleText: Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: AppSize.hs20,
      ),
    ),
    messageText: Text(
      message,
      style: TextStyle(color: Colors.white, fontSize: AppSize.hs16),
    ),
    backgroundColor: colorbg,
    colorText: Colors.white,
    snackPosition: SnackPosition.TOP,
  );
}
