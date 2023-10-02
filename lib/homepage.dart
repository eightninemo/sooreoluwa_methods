import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iwrotethem/utils/constant.dart';

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
    return const Placeholder();
  }
}
