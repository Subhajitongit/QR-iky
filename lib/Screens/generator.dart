// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:qr_app/Screens/app_bar.dart';

class Generator extends StatefulWidget {
  const Generator({Key? key}) : super(key: key);

  @override
  _GeneratorState createState() => _GeneratorState();
}

class _GeneratorState extends State<Generator> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // ignore: prefer_const_literals_to_create_immutables
          body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          appBar(
            title: "Generate QR",
            desc: "Generate with ease!!",
          )
        ],
      )),
    );
  }
}
