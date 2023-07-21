import 'package:flutter/material.dart';
import 'package:iwrotethem/utils/text_style.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

import 'colors.dart';

displayErrorMotionToast(
  BuildContext context,
  String description,
) {
  MotionToast(
    description: Center(
      child: Text(
        description,
        textAlign: TextAlign.center,
        style: mediumtextStyle(14, colorWhite),
      ),
    ),
    primaryColor: errorColor,
    iconSize: 28,
    displaySideBar: false,
    enableAnimation: false,
    animationType: AnimationType.fromLeft,
    position: MotionToastPosition.top,
    backgroundType: BackgroundType.solid,
    animationCurve: Curves.easeOutExpo,
    width: 250,
    height: 45,
    dismissable: false,
  ).show(context);
}

displaySuccessMotionToast(BuildContext context, String description,
    {Function? onClose}) {
  MotionToast(
    description: Center(
      child: Text(
        description,
        textAlign: TextAlign.center,
        style: mediumtextStyle(14, colorWhite),
      ),
    ),
    primaryColor: successColor,
    iconSize: 28,
    displaySideBar: false,
    enableAnimation: false,
    animationType: AnimationType.fromLeft,
    position: MotionToastPosition.top,
    backgroundType: BackgroundType.solid,
    animationCurve: Curves.easeOutExpo,
    width: 250,
    height: 45,
    dismissable: false,
    onClose: onClose,
  ).show(context);
}

displayWarningMotionToast(
  BuildContext context,
  String description,
) {
  MotionToast(
    description: Center(
      child: Text(
        description,
        textAlign: TextAlign.center,
        style: semiboldtextStyle(14),
      ),
    ),
    primaryColor: const Color(0xFFDADADA),
    iconSize: 28,
    displaySideBar: false,
    enableAnimation: false,
    animationType: AnimationType.fromLeft,
    position: MotionToastPosition.top,
    backgroundType: BackgroundType.solid,
    animationCurve: Curves.easeOutExpo,
    width: 250,
    height: 45,
    dismissable: false,
  ).show(context);
}
