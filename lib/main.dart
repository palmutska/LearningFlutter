import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pap/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Refeições',
      home: const HomePage(),
    );
  }
}
