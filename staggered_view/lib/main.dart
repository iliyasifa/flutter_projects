import 'package:flutter/material.dart';
import 'package:staggered_view/screen/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: const Color(0xFFFEFEFE),
        primaryColor: const Color(0xFFf36f7c),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xFFfff2f3),
        ),
      ),
      home: const HomePage(),
    );
  }
}
