import 'package:flutter/material.dart';
import 'package:henryportfolio/constant/app_data.dart';
import 'package:henryportfolio/constant/colorConst.dart';
import 'package:url_launcher/url_launcher.dart';

class Services {
  Future<void> urlLauncher(url) async {
    final Uri url0 = Uri.parse(url);
    if (!await launchUrl(url0)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> showAlertDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          // <-- SEE HERE
          // title: const Text('Cancel booking'),
          content: SingleChildScrollView(
              child: Image.asset(
            PersonalDetails.logoImage,
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.7,
          )),
          actions: <Widget>[
            TextButton(
              child: const Text('exit'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
