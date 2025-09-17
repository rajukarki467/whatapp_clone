import 'package:flutter/material.dart';
import '../screen/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff00a884)),
        useMaterial3: false,
      ),
      home: const SplashScreen(),
    );
  }
}
