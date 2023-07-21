import 'package:flutter/material.dart';
// import 'package:iwrotethem/utils/bottom_sheet.dart';
import 'package:iwrotethem/utils/constant.dart';
import 'package:iwrotethem/utils/button.dart';
import 'package:iwrotethem/utils/colors.dart';
import 'package:iwrotethem/utils/toast.dart';

class HomePage extends StatefulWidget {
  static const id = 'home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    networkConnectivity.initialise(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: leftWithRightOrTopOrBottom(right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              submissionButton(
                context,
                width: 250,
                bgColor: colorBlack,
                onTap: () => displaySuccessMotionToast(
                    context, 'Hello Hello Hello World'),
                // onTap: () => pushReplacementTo(context, const SecondPage()),
                // onTap: () => showModal(context, const SecondPage()),
                title: 'Go to Second Page',
                height: 50,
                radius: 12,
              ),
              heightTwenty,
              constantPlaceHolder,
            ],
          ),
        ),
      ),
    );
  }
}
