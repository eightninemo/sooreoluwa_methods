import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iwrotethem/utils/input_fields.dart';
import 'package:iwrotethem/utils/text_style.dart';

import 'colors.dart';
import 'constant.dart';

BoxDecoration numberPadContainer = BoxDecoration(
  borderRadius: BorderRadius.circular(50),
);

Widget numberPad(
  BuildContext context, {
  bool? loading,
  void Function()? onTap1,
  void Function()? onTap2,
  void Function()? onTap3,
  void Function()? onTap4,
  void Function()? onTap5,
  void Function()? onTap6,
  void Function()? onTap7,
  void Function()? onTap8,
  void Function()? onTap9,
  void Function()? onTap0,
  void Function()? onTapBackSpace,
  void Function()? onTapCheckMark,
}) =>
    Expanded(
      flex: 1,
      child: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: onTap1,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: numberPadContainer,
                      child: Center(
                        child: Text(
                          '1',
                          style: semiboldtextStyle(18),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: onTap2,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: numberPadContainer,
                      child: Center(
                          child: Text(
                        '2',
                        style: semiboldtextStyle(18),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: onTap3,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: numberPadContainer,
                      child: Center(
                          child: Text(
                        '3',
                        style: semiboldtextStyle(18),
                      )),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: onTap4,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: numberPadContainer,
                      child: Center(
                          child: Text(
                        '4',
                        style: semiboldtextStyle(18),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: onTap5,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: numberPadContainer,
                      child: Center(
                          child: Text(
                        '5',
                        style: semiboldtextStyle(18),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: onTap6,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: numberPadContainer,
                      child: Center(
                          child: Text(
                        '6',
                        style: semiboldtextStyle(18),
                      )),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: onTap7,
                    child: Container(
                      height: 40,
                      width: 40,
                      child: Center(
                          child: Text(
                        '7',
                        style: semiboldtextStyle(18),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: onTap8,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: numberPadContainer,
                      child: Center(
                          child: Text(
                        '8',
                        style: semiboldtextStyle(18),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: onTap9,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: numberPadContainer,
                      child: Center(
                          child: Text(
                        '9',
                        style: semiboldtextStyle(18),
                      )),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: onTapBackSpace,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: numberPadContainer,
                      child: Center(
                        child: Icon(Icons.keyboard_backspace_outlined,
                            color: primaryColor, size: 28),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: onTap0,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: numberPadContainer,
                      child: Center(
                          child: Text(
                        '0',
                        style: semiboldtextStyle(18),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: onTapCheckMark,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: numberPadContainer,
                      child: loading ?? false
                          ? Center(
                              child: loadingWidget(primaryColor),
                            )
                          : Center(
                              child: Icon(CupertinoIcons.check_mark,
                                  color: Colors.black.withBlue(40), size: 28),
                            ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

Widget numberPadInputField(
  BuildContext context,
  TextEditingController controller1,
  TextEditingController controller2,
  TextEditingController controller3,
  TextEditingController controller4, {
  void Function(String)? onChanged1,
  void Function(String)? onChanged2,
  void Function(String)? onChanged3,
  void Function(String)? onChanged4,
}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        pinInput(
          context,
          controller1,
          onChanged: (p0) {
            if (p0.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
        ),
        const SizedBox(width: 20),
        pinInput(
          context,
          controller2,
          onChanged: (p0) {
            if (p0.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
        ),
        const SizedBox(width: 20),
        pinInput(
          context,
          controller3,
          onChanged: (p0) {
            if (p0.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
        ),
        const SizedBox(width: 20),
        pinInput(
          context,
          controller4,
          onChanged: (p0) {
            if (p0.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
        ),
      ],
    );
