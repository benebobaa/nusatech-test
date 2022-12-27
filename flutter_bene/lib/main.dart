import 'package:flutter/material.dart';
import 'package:flutter_bene/page/login_page.dart';
import 'package:flutter_bene/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
      theme: ThemeClass.darkTheme,
    );
  }
}
