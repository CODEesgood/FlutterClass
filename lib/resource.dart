import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_aug_5/watermain.dart';

class Resource extends StatelessWidget {
  Resource({super.key});

  final Uri _url = Uri.parse('https://flutter.dev');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resources!')),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Link 1"),
        Text("Link 2"),
        Text("Link 2"),
        Text("Link 2"),
        Text("Link 2"),
        Text("Link 2"),
        Text("Link 2"),
        TextButton(
          child: Text("Link 2",
              style: TextStyle(
                  color: Colors.blue, decoration: TextDecoration.underline)),
          onPressed: _launchUrl,
        ),
        ElevatedButton(
            child: Text("Back to Home"),
            onPressed: () {
              Navigator.pop(context);
            }),
      ])),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
