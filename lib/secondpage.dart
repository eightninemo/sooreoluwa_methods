import 'package:flutter/cupertino.dart';
import 'package:iwrotethem/utils/button.dart';
import 'package:iwrotethem/utils/colors.dart';
import 'package:iwrotethem/utils/constant.dart';

class SecondPage extends StatefulWidget {
  static const id = 'second';
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: leftWithRightOrTopOrBottom(right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            closeIconButton(
              context,
              const Icon(CupertinoIcons.multiply),
            ),
            heightTwenty,
            constantPlaceHolder,
            heightTwenty,
            Container(
              height: 100,
              width: 100,
              decoration: moboxdecoration(primaryColor),
            )
          ],
        ),
      ),
    );
  }
}
