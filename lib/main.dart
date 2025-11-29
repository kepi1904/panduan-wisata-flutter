import 'package:flutter/material.dart';

import 'login_page.dart';

void main() {
  runApp(const PanduanWisataApp());
}

class PanduanWisataApp extends StatelessWidget {
  const PanduanWisataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Panduan Wisata App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF3F6FB),
      ),
      home: const LoginPage(),
    );
  }
}
