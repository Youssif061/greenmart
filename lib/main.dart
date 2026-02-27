import 'dart:io';

import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/themes.dart';
import 'package:greenmart/features/into/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Appthem.light,
      builder: (context, child) {
        return SafeArea(
          bottom: Platform.isAndroid ? true : false,
          top: false,
          child: child ?? Container(),
        );
      },
      home: splashscreen(),
    );
  }
}
