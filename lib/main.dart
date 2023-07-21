import 'package:flutter/material.dart';
import 'package:iwrotethem/homepage.dart';
import 'package:iwrotethem/secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Codes',
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => const HomePage(),
        SecondPage.id: (context) => const SecondPage(),
      },
    );
  }
}
