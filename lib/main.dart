import 'package:flutter/material.dart';
import 'package:google_clone/responsive/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: MediaQuery.of(context).size.width > 700
            ? Colors.white
            : const Color.fromARGB(255, 36, 36, 36),
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        textTheme: const TextTheme(
          titleMedium: TextStyle(
              fontFamily: 'Poppins', color: Colors.grey, fontSize: 20),
          bodyMedium: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              color: Colors.grey),
        ),
      ),
      home: const Responsive(),
    );
  }
}
