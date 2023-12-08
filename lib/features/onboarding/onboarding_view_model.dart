import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jeu_themes/main.dart';

import '../../config/resources/values_manager.dart';

class OnboardingViewModel extends GetxController {
  Locale getIntialLang() {
    Locale intialLang;
    if (sharedPreferences.getString("localLang") == "en") {
      intialLang = const Locale("en");
    } else if (sharedPreferences.getString("localLang") == "fr") {
      intialLang = const Locale("fr");
    } else if (sharedPreferences.getString("localLang") == "es") {
      intialLang = const Locale("es");
    } else {
      intialLang = const Locale("en");
    }
    return intialLang;
  }

  void changLang(String codeLang) {
    Locale locale = Locale(codeLang);
    sharedPreferences.setString("localLang", codeLang);
    Get.updateLocale(locale);
  }

  void checkingController(String index) {
    if (index == "fr") {
      sharedPreferences.setBool("frChecked", true);
      sharedPreferences.setBool("enChecked", false);
      sharedPreferences.setBool("esChecked", false);
      update();
    } else if (index == "en") {
      sharedPreferences.setBool("frChecked", false);
      sharedPreferences.setBool("enChecked", true);
      sharedPreferences.setBool("esChecked", false);
      update();
    } else if (index == "es") {
      sharedPreferences.setBool("frChecked", false);
      sharedPreferences.setBool("enChecked", false);
      sharedPreferences.setBool("esChecked", true);
      update();
    }
  }

  Future dialogBoxIntervention({
    required BuildContext context,
    required String? boxName,
    required String? boxEntity,
    required String? boxStatus,
    required VoidCallback insall,
    required VoidCallback deInsall,
    required VoidCallback depanner,
  }) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0x00FFFFFF),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  //background image and clear icon
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Padding(
                      padding: EdgeInsets.all(AppPadding.wp8),
                      child: Icon(
                        Icons.clear_rounded,
                        color: Colors.black,
                        size: AppSize.hs16 * 2,
                      ),
                    ),
                  ),
                  //white container
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: AppPadding.hp25),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(AppSize.hs14),
                              bottomRight: Radius.circular(AppSize.hs14),
                              topLeft: Radius.circular(AppSize.hs25 * 2),
                            ),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: AppPadding.wp20),
                          child: Column(
                            children: [
                              SizedBox(height: AppSize.hs25 * 2.5),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
