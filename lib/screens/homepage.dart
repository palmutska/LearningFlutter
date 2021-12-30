import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:pap/widgets/background.dart';
import 'package:pap/widgets/logo.dart';
import 'package:pap/utilities/time_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //? Tentar meter isto num ficheiro a parte
    //* Firebase start
    DatabaseReference ref = FirebaseDatabase.instance.ref("server/currentCard");
    String value = "";
    ref.onValue.listen((event) {
      var snapshot = event.snapshot;
      setState(() {
        value = snapshot.value.toString();
      });
    });
    //* Firebase end
    if (value == "none") {
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
    } else {
      //! Return proxima página!!
      return Container();
    }
  }
}
