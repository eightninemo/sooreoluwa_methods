import 'package:flutter/material.dart';
import 'package:iwrotethem/utils/navigation.dart';
import 'package:iwrotethem/utils/colors.dart';
import 'package:iwrotethem/utils/text_style.dart';

// submission button.
Widget submissionButton(
  BuildContext context, {
  double? height,
  double? width,
  double? radius,
  String? title,
  Color? bgColor,
  void Function()? onTap,
}) =>
    GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 45,
        width: width,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(radius ?? 0),
        ),
        child: Center(
            child: Text(
          title ?? 'Submit',
          style: mediumtextStyle(14, colorWhite),
        )),
      ),
    );

// close button with icon.
Widget closeIconButton(
  BuildContext context,
  Widget? icon,
) =>
    GestureDetector(
      onTap: () => pop(context),
      child: SizedBox(
        height: 45,
        width: 45,
        child: icon,
      ),
    );
