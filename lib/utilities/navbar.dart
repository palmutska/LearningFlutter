import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 85,
      right: 250,
      child: DefaultTextStyle(
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 26,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text("Marcar uma refeição"),
            const SizedBox(width: 50),
            const Text("Conta"),
            const SizedBox(width: 50),
            const Text("Marcações"),
          ],
        ),
      ),
    );
  }
}
