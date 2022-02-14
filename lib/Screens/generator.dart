// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:qr_app/Screens/app_bar.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Generator extends StatefulWidget {
  const Generator({Key? key}) : super(key: key);

  @override
  _GeneratorState createState() => _GeneratorState();
}

class _GeneratorState extends State<Generator> {
  final _qrcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // ignore: prefer_const_literals_to_create_immutables
          body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                QrImage(
                  data: _qrcontroller.text,
                  size: 300,
                ),
                SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: _qrcontroller,
                    decoration: InputDecoration(
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {});
                          },
                          child: Icon(Icons.done),
                        ),
                        hintText: "Enter the data",
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
          appBar(
            title: "Generate QR",
            desc: "Generate with ease!!",
          ),
        ],
      )),
    );
  }
}
