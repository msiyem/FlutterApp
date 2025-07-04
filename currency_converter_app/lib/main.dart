import 'package:flutter/material.dart';
import 'package:flutter_app/material_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/cupertino_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home:MaterialConverterPage(),   
    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoConverterPage(),   
    );
  }
}
