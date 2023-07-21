import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iwrotethem/utils/text_style.dart';

import 'colors.dart';

Widget textInput(
  BuildContext context, {
  int? maxLength,
  double? borderRadiusValue,
  TextStyle? textStyle,
  TextStyle? hintStyle,
  TextStyle? suffixStyle,
  TextStyle? prefixStyle,
  TextAlign? textAlign,
  String? hintText,
  String? errorText,
  String? defaultText,
  String? helperText,
  String? suffixText,
  Widget? icon,
  Color? fillColor,
  Color? borderColor,
  TextInputAction? inputAction,
  List<TextInputFormatter>? inputFormatter,
  TextEditingController? controller,
  String? validateText,
  void Function(String)? onChanged,
}) =>
    SizedBox(
      width: 300,
      child: TextFormField(
        maxLength: maxLength,
        textInputAction: inputAction,
        inputFormatters: inputFormatter,
        controller: controller,
        validator: (value) => value!.isEmpty ? validateText : null,
        obscureText: false,
        autofocus: false,
        style: textStyle,
        textAlign: textAlign!,
        cursorColor: primaryColor,
        decoration: InputDecoration(
          filled: true,
          fillColor: fillColor,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor ?? colorWhite,
            ),
            borderRadius: BorderRadius.circular(
              borderRadiusValue ?? 12,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: errorColor,
            ),
            borderRadius: BorderRadius.circular(
              borderRadiusValue ?? 12,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(
              borderRadiusValue ?? 12,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(
              borderRadiusValue ?? 12,
            ),
          ),
          hintText: hintText ?? "Your Text",
          hintStyle: hintStyle,
          errorText: errorText,
          prefixText: defaultText,
          prefixStyle: prefixStyle,
          helperText: helperText,
          suffixIcon: icon,
          suffixStyle: suffixStyle,
          suffixText: suffixText,
        ),
        onChanged: onChanged,
      ),
    );

Widget emailInput(
  BuildContext context, {
  int? maxLength,
  double? borderRadiusValue,
  TextStyle? textStyle,
  TextStyle? hintStyle,
  TextStyle? suffixStyle,
  TextStyle? prefixStyle,
  TextAlign? textAlign,
  String? hintText,
  String? errorText,
  String? defaultText,
  String? helperText,
  String? suffixText,
  Widget? icon,
  Color? fillColor,
  Color? borderColor,
  TextInputAction? inputAction,
  List<TextInputFormatter>? inputFormatter,
  TextEditingController? controller,
  String? validateText,
  void Function(String)? onChanged,
}) =>
    SizedBox(
      width: 300,
      child: TextFormField(
        maxLength: maxLength,
        textInputAction: inputAction,
        inputFormatters: inputFormatter,
        controller: controller,
        validator: (value) => value!.isEmpty ? validateText : null,
        obscureText: false,
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        style: textStyle,
        textAlign: textAlign!,
        cursorColor: primaryColor,
        decoration: InputDecoration(
          filled: true,
          fillColor: fillColor,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor ?? colorWhite,
            ),
            borderRadius: BorderRadius.circular(
              borderRadiusValue ?? 12,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: errorColor,
            ),
            borderRadius: BorderRadius.circular(
              borderRadiusValue ?? 12,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(
              borderRadiusValue ?? 12,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(
              borderRadiusValue ?? 12,
            ),
          ),
          hintText: hintText ?? "example@email.com",
          hintStyle: hintStyle,
          errorText: errorText,
          prefixText: defaultText,
          prefixStyle: prefixStyle,
          helperText: helperText,
          suffixIcon: icon,
          suffixStyle: suffixStyle,
          suffixText: suffixText,
        ),
        onChanged: onChanged,
      ),
    );

Widget phoneInput(
  BuildContext context, {
  int? maxLength,
  double? borderRadiusValue,
  bool? obscureText,
  TextStyle? textStyle,
  TextStyle? hintStyle,
  TextStyle? suffixStyle,
  TextStyle? prefixStyle,
  TextAlign? textAlign,
  String? hintText,
  String? errorText,
  String? defaultText,
  String? helperText,
  String? suffixText,
  Widget? icon,
  Color? fillColor,
  Color? borderColor,
  TextInputAction? inputAction,
  List<TextInputFormatter>? inputFormatter,
  TextEditingController? controller,
  String? validateText,
  void Function(String)? onChanged,
}) =>
    SizedBox(
      width: 300,
      child: TextFormField(
        maxLength: maxLength,
        textInputAction: inputAction,
        inputFormatters: inputFormatter,
        controller: controller,
        validator: (value) => value!.isEmpty ? validateText : null,
        obscureText: obscureText!,
        keyboardType: TextInputType.phone,
        autofocus: false,
        style: textStyle,
        textAlign: textAlign!,
        cursorColor: primaryColor,
        decoration: InputDecoration(
          filled: true,
          fillColor: fillColor,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor ?? colorWhite,
            ),
            borderRadius: BorderRadius.circular(
              borderRadiusValue ?? 12,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: errorColor,
            ),
            borderRadius: BorderRadius.circular(
              borderRadiusValue ?? 12,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(
              borderRadiusValue ?? 12,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(
              borderRadiusValue ?? 12,
            ),
          ),
          hintText: hintText ?? "8123456790",
          hintStyle: hintStyle,
          errorText: errorText,
          prefixText: defaultText,
          prefixStyle: prefixStyle,
          helperText: helperText,
          suffixIcon: icon,
          suffixStyle: suffixStyle,
          suffixText: suffixText,
        ),
        onChanged: onChanged,
      ),
    );
Widget pinInput(
  BuildContext context,
  TextEditingController controller, {
  int? maxLength,
  double? borderRadiusValue,
  bool? obscureText,
  TextStyle? textStyle,
  TextStyle? hintStyle,
  TextStyle? suffixStyle,
  TextStyle? prefixStyle,
  TextAlign? textAlign,
  String? hintText,
  String? labelText,
  String? errorText,
  String? defaultText,
  String? helperText,
  String? suffixText,
  Widget? icon,
  Color? fillColor,
  Color? borderColor,
  TextInputAction? inputAction,
  List<TextInputFormatter>? inputFormatter,
  String? validateText,
  void Function(String)? onChanged,
}) =>
    Center(
      child: SizedBox(
        width: 50,
        height: 60,
        child: TextField(
          maxLength: 1,
          textInputAction: inputAction,
          inputFormatters: inputFormatter,
          controller: controller,
          // validator: (value) => value!.isEmpty ? validateText : null,
          keyboardType: TextInputType.none,
          autofocus: false,
          style: textStyle ?? mediumtextStyle(20),
          textAlign: textAlign ?? TextAlign.center,
          cursorColor: primaryColor,
          decoration: InputDecoration(
            filled: true,
            counterText: '',
            fillColor: fillColor ?? fillTextColor,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor ?? primaryColor,
              ),
              borderRadius: BorderRadius.circular(
                borderRadiusValue ?? 12,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: errorColor,
              ),
              borderRadius: BorderRadius.circular(
                borderRadiusValue ?? 12,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: errorColor,
              ),
              borderRadius: BorderRadius.circular(
                borderRadiusValue ?? 12,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(
                borderRadiusValue ?? 12,
              ),
            ),
            hintText: hintText ?? "0",
            hintStyle: hintStyle ?? thintextStyle(20, colorGrey),
            errorText: errorText,
            prefixText: defaultText,
            prefixStyle: prefixStyle,
            helperText: helperText,
            suffixIcon: icon,
            suffixStyle: suffixStyle,
            suffixText: suffixText,
          ),
          onChanged: onChanged,
        ),
      ),
    );

Widget passwordInput(
  BuildContext context, {
  int? maxLength,
  double? borderRadiusValue,
  bool? obscureText,
  TextStyle? textStyle,
  TextStyle? hintStyle,
  TextStyle? suffixStyle,
  TextStyle? prefixStyle,
  TextAlign? textAlign,
  String? hintText,
  String? errorText,
  String? defaultText,
  String? helperText,
  String? suffixText,
  IconData? icon,
  Color? fillColor,
  Color? borderColor,
  TextInputAction? inputAction,
  List<TextInputFormatter>? inputFormatter,
  TextEditingController? controller,
  String? validateText,
  void Function(String)? onChanged,
}) =>
    SizedBox(
      width: 300,
      child: TextFormField(
        maxLength: maxLength,
        textInputAction: inputAction,
        inputFormatters: inputFormatter,
        controller: controller,
        validator: (value) => value!.isEmpty ? validateText : null,
        obscureText: true,
        autofocus: false,
        style: textStyle,
        textAlign: textAlign!,
        cursorColor: primaryColor,
        decoration: InputDecoration(
          filled: true,
          fillColor: fillColor,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor ?? colorWhite,
            ),
            borderRadius: BorderRadius.circular(
              borderRadiusValue ?? 12,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: errorColor,
            ),
            borderRadius: BorderRadius.circular(
              borderRadiusValue ?? 12,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(
              borderRadiusValue ?? 12,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(
              borderRadiusValue ?? 12,
            ),
          ),
          hintText: hintText,
          hintStyle: hintStyle,
          errorText: errorText,
          prefixText: defaultText,
          prefixStyle: prefixStyle,
          helperText: helperText,
          suffixIcon: Icon(icon ?? CupertinoIcons.eye),
          suffixStyle: suffixStyle,
          suffixText: suffixText,
        ),
        onChanged: onChanged,
      ),
    );
