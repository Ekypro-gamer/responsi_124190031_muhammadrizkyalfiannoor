import 'package:flutter/material.dart';
import 'halaman_utama.dart';
import 'dart:convert';

class BaseNetwork {
  static final String baseUrl = "https://reqres.in/api/";
  static void debugPrint(String value) {
    print("[BASE_NETWORK] - $value");
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Get.lazyPut(() => DataClass());

    return MaterialApp(
      title: 'Responsi Praktikum Pemrograman Aplikasi Mobile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      home: HalamanUtama(),
    );
  }
}