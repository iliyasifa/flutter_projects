import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: const Color(0xFFFAFAFA),
        primaryColor: const Color(0xFFFFBD00),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xFFFFEBC7),
        ),
      ),
      home: HomePage(),
    );
  }
}
