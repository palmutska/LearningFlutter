import 'package:flutter/material.dart';
import 'package:pap/widgets/background.dart';
import 'package:pap/widgets/logo.dart';
import 'package:pap/utilities/time_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Background(),
        const LogoIPE(),
        DefaultTextStyle(
          style: const TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
          ),
          child: Positioned(
              top: 230,
              left: 700,
              child: Column(
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
        ),
        Positioned(
          top: 150,
          left: -50,
          child: Image.asset(
            "assets/images/rfidScanner.png",
            width: 600,
          ),
        )
      ],
    );
  }
}
