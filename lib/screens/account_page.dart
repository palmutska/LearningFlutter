import 'package:flutter/material.dart';
import 'package:pap/utilities/account.dart';
import 'package:pap/utilities/exit_button.dart';
import 'package:pap/utilities/navbar.dart';
import 'package:pap/widgets/background.dart';
import 'package:pap/widgets/logo.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Background(),
        const LogoIPE(),
        const Navbar(),
        ExitButton(),
        Positioned(
          left: (MediaQuery.of(context).size.width / 2) - 460,
          bottom: MediaQuery.of(context).size.height / 2 - 200,
          child: DefaultTextStyle(
            textAlign: TextAlign.left,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AccountData(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
