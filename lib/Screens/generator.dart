// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qr_app/Screens/app_bar.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter/services.dart';

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
                InkWell(
                  onLongPress: () async {
                    final temp = await getTemporaryDirectory();
                    final path = '${temp.path}/qr.jpg';

                    await Share.shareFiles([path], text: 'Check out this QR!');
                  },
                  child: QrImage(
                    embeddedImage: NetworkImage('assets/images/splscrr.png'),
                    data: _qrcontroller.text,
                    size: 300,
                  ),
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
                            Clipboard.setData(ClipboardData());
                            HapticFeedback.heavyImpact();
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
