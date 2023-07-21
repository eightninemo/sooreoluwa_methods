// block to show modal bottom sheets
import 'package:flutter/material.dart';

import 'colors.dart';

Future showModal(BuildContext context, Widget child, [double? height]) =>
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      enableDrag: true,
      context: context,
      builder: (context) => buildModal(
        context,
        child,
        height: height,
      ),
    );

// block to build modal bottom sheet
Widget buildModal(BuildContext context, Widget child, {double? height}) =>
    Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        height: height,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          color: scaffoldColor,
        ),
        child: SingleChildScrollView(
          child: child,
        ),
      ),
    );
