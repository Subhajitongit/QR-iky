// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:qr_app/Screens/app_bar.dart';
import 'package:qr_app/Screens/generator.dart';
import 'package:qr_app/Screens/scan.dart';

SafeArea HomeScreen(BuildContext context) {
  return SafeArea(
    child: Scaffold(
      body: Column(
        children: [
          appBar(
            title: "QR-iky",
            desc: "QR-iky allows you to generate and scan QR codes at ease!",
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Builder(builder: (context) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Generator()));
                      },
                      child: Container(
                        width: 400,
                        height: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              colorFilter: ColorFilter.mode(
                                  Colors.black54, BlendMode.darken),
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1613388395752-a4f8730271e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1631&q=80"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text("Generate QR Code",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              )),
                        ),
                      ),
                    );
                  }),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    child: Builder(builder: (context) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Scan()));
                        },
                        child: Container(
                          width: 400,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Colors.black54, BlendMode.darken),
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1559131397-f94da358f7ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cXIlMjBjb2RlfGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text("Scan QR Code",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                )),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(
                  height: 150,
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
