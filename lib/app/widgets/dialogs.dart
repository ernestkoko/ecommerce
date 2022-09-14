import 'package:flutter/material.dart';
import 'package:get/get.dart';

void notificationDialog({required String title, required String middleText, bool popPage= false}) {
  Get.defaultDialog(
    title: title,
    titleStyle: TextStyle(color: Get.theme.primaryColorDark),
    middleText: middleText,
    confirm: TextButton(
      onPressed: () {
        Get.back();
        if(popPage) {
          Get.back();
        }
      },
      child: const Text("Ok"),
    ),
  );



}

void errorNotificationDialog(
    { String? title, required String middleText}) {
  Get.defaultDialog(
    title: title ??"Error!",
    titleStyle: TextStyle(color: Get.theme.errorColor),
    middleText: middleText,
    confirm: TextButton(
      onPressed: () {
        Get.back();
      },
      child: const Text("Ok"),
    ),
  );
}
Widget onError({String? error, Function()? onPressed }){
 return  Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Error!",
          style: TextStyle(color: Get.theme.errorColor),
        ),
        const SizedBox(
          height: 10,
        ),
        Text("$error "),
        TextButton(
          onPressed: onPressed,
          child: const Text("Try again"),
        )
      ],
    ),
  );
}