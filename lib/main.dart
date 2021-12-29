import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pap/widgets/background.dart';
import 'package:pap/widgets/logo.dart';
import 'package:pap/utilities/time_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(
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

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const LogoIPE(),
        const Background(),
        DefaultTextStyle(
          style: const TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
          ),
          child: Positioned(
              top: 230,
              left: 700,
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const TimeText(),
                  const Text(
                    "Passe o cartão para continuar",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              )),
        )
      ],
    );
  }
}
