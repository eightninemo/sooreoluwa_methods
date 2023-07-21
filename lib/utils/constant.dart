import 'package:flutter/material.dart';

SizedBox heightTen = const SizedBox(height: 10);

SizedBox heightTwenty = const SizedBox(height: 20);

SizedBox heightThirty = const SizedBox(height: 30);

SizedBox heightForty = const SizedBox(height: 40);

SizedBox heightFifty = const SizedBox(height: 50);

SizedBox widthFive = const SizedBox(width: 5);

SizedBox widthTen = const SizedBox(width: 10);

SizedBox widthfifteen = const SizedBox(width: 15);

Placeholder constantPlaceHolder = const Placeholder(fallbackHeight: 200);

EdgeInsets leftWithRightOrTopOrBottom(
        {double? right, double? top, double? bottom}) =>
    EdgeInsets.only(
      top: top ?? 0,
      left: right ?? 0,
      right: 20,
      bottom: bottom ?? 0,
    );

EdgeInsets leftRightPadding = const EdgeInsets.only(
  top: 0,
  left: 20,
  right: 20,
  bottom: 0,
);

EdgeInsets leftPadding = const EdgeInsets.only(
  top: 0,
  left: 20,
  right: 0,
  bottom: 0,
);

BoxDecoration moboxdecoration(Color? color,
        {double? radius, List<BoxShadow>? boxShadow}) =>
    BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(radius ?? 20),
      boxShadow: boxShadow,
    );

BoxShadow moboxShadow([double? colorVal, spread, blur]) => BoxShadow(
      color: Colors.black.withOpacity(
        colorVal ?? 0.5,
      ),
      spreadRadius: spread ?? 7.0,
      blurRadius: blur ?? 20.0,
      offset: const Offset(
        0,
        0,
      ),
    );

Widget loadingWidget([Color? color]) => Center(
      child: SizedBox(
        height: 20,
        width: 20,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: color ?? Colors.white,
        ),
      ),
    );
