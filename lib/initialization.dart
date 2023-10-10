import 'package:flutter/material.dart';
import 'package:flutter_aug_5/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_aug_5/login.dart';
import 'package:flutter_aug_5/main.dart';
import 'package:flutter_aug_5/watermain.dart';
import 'size_config.dart';

class Initialization extends StatelessWidget {
  const Initialization({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    User? user = Auth().user;
    if (user == null) {
      // go to login screen
      return const LoginPage();
    } else {
      // go to home page
      return const Watermain();
    }
  }
}
