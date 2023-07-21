import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// josteve's
Future<T?> pushTo<T>(BuildContext context, Widget page,
    [PushStyle? pushStyle]) async {
  return await Navigator.push<T>(
      context,
      pushStyle == PushStyle.cupertino
          ? CupertinoPageRoute(builder: (context) => page)
          : MaterialPageRoute(builder: (context) => page));
}

// josteve's
Future<T> pushReplacementTo<T>(BuildContext context, Widget page,
    [PushStyle? pushStyle]) async {
  return await Navigator.pushReplacement(
      context,
      pushStyle == PushStyle.cupertino
          ? CupertinoPageRoute(builder: (context) => page)
          : MaterialPageRoute(builder: (context) => page));
}

// josteve's
void pushToAndClearStack(BuildContext context, Widget page) {
  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => page), (route) => false);
}

// josteve's
void pop<T>(BuildContext context, [T? value]) {
  return Navigator.pop<T>(context, value);
}

// sooreoluwa's
Future<T?> pushNamed<T>(BuildContext context, String page,
    [PushStyle? pushStyle]) {
  return Navigator.pushNamed(context, page);
}

enum PushStyle { material, cupertino }
