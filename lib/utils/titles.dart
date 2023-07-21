import 'package:flutter/material.dart';
import 'package:iwrotethem/utils/text_style.dart';

import 'colors.dart';

Widget pageTitle({String? maintext, String? subtext}) => Padding(
      padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
      child: Column(
        children: [
          Text(
            maintext ?? '',
            style: boldtextStyle(16),
          ),
          Text(
            subtext ?? '',
            style: regulartextStyle(
              14,
              colorGrey,
            ),
          ),
        ],
      ),
    );
