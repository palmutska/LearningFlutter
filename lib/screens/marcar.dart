import 'package:flutter/material.dart';
import 'package:pap/widgets/background.dart';
import 'package:pap/widgets/logo.dart';

class MarcarRefeicao extends StatelessWidget {
  const MarcarRefeicao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Background(),
        const LogoIPE(),
      ],
    );
  }
}
