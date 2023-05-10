import 'package:flutter/material.dart';

import 'package:navigation/receive_data/forward_and_back.dart';
import 'package:navigation/hero_navigation.dart';
import 'package:navigation/go_router.dart';
import 'package:navigation/send_data/route_settings.dart';
import 'advanced/my_advanced_app.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // usado para o Exemplo do GoRouter!
    // return MaterialApp.router(
    //   routerConfig: goRouter,
    // );
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: FirstRoute(),
        ),
      ),
    );
  }
}
