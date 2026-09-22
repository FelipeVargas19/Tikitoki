import 'package:flutter/material.dart';
import 'package:tikitoki/config/theme/app_theme.dart';
import 'package:tikitoki/presentation/providers/discover_provider.dart';
import 'package:tikitoki/presentation/screens/discover/discover_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create:(_) => DiscoverProvider()),
      ],
      child: MaterialApp(
        title: 'tikitoki',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen()
      ),
    );
  }
}
