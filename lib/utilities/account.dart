import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class AccountData extends StatefulWidget {
  const AccountData({Key? key}) : super(key: key);

  @override
  _AccountDataState createState() => _AccountDataState();
}

class _AccountDataState extends State<AccountData> {
  @override
  Widget build(BuildContext context) {
    //* CurrentCard
    DatabaseReference ref = FirebaseDatabase.instance.ref("server/currentCard");
    String value = "";
    ref.onValue.listen((event) {
      var snapshot = event.snapshot;
      if (mounted) {
        setState(() {
          value = snapshot.value.toString();
        });
      }
    });
    //* Name
    DatabaseReference refName =
        FirebaseDatabase.instance.ref("server/users/" + value + "/name");
    String name = "";
    refName.onValue.listen((event) {
      var snapshot = event.snapshot;
      if (mounted) {
        setState(() {
          name = snapshot.value.toString();
        });
      }
    });
    //* Type
    DatabaseReference refType =
        FirebaseDatabase.instance.ref("server/users/" + value + "/type");
    String type = "";
    refType.onValue.listen((event) {
      var snapshot = event.snapshot;
      if (mounted) {
        setState(() {
          type = snapshot.value.toString();
        });
      }
    });
    //* Num (Aluno)
    DatabaseReference refNum =
        FirebaseDatabase.instance.ref("server/users/" + value + "/num");
    String num = "";
    refNum.onValue.listen((event) {
      var snapshot = event.snapshot;
      if (mounted) {
        setState(() {
          num = snapshot.value.toString();
        });
      }
    });
    //* Regime (Aluno)
    DatabaseReference refReg =
        FirebaseDatabase.instance.ref("server/users/" + value + "/regime");
    String regime = "";
    refReg.onValue.listen((event) {
      var snapshot = event.snapshot;
      if (mounted) {
        setState(() {
          regime = snapshot.value.toString();
        });
      }
    });

    if (type == "Militar") {
      return Row(
        children: [
          Image.asset(
            "assets/images/militar.png",
            width: 340,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Nome: " + name),
              Text("Tipo: " + type),
            ],
          ),
        ],
      );
    } else if (type == "Aluno") {
      return Row(
        children: [
          Image.asset(
            "assets/images/aluno.png",
            width: 340,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Nome: " + name),
              Text("Nº: " + num),
              Text("Regime: " + regime),
            ],
          ),
        ],
      );
    } else if (type == "Professor") {
      return Row(
        children: [
          Image.asset(
            "assets/images/professor.png",
            width: 340,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Nome: " + name),
              Text("Tipo: " + type),
            ],
          ),
        ],
      );
    } else {
      return Row(
        children: [
          Image.asset(
            "assets/images/funcionario.png",
            width: 340,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Nome: " + name),
              const Text("Tipo: Funcionário"),
            ],
          ),
        ],
      );
    }
  }
}
