import 'package:flutter/material.dart';
import 'package:tikitoki/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tikitoki',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tikitoki'),
        ),
        body: Center(
          child: Text('secso!'),
        ),
      ),
    );
  }
}
