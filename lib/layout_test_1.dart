import 'package:flutter/material.dart';
import 'package:flutter_aug_5/size_config.dart';

class Boxes extends StatelessWidget {
  const Boxes({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Column(
            children: [
                Container(
                    color: Colors.pink,
                    height: 20
                ),
                Container(
                    color: Colors.orange,
                    height: SizeConfig.blockSizeVertical! * 80
                ),
                Container(
                    color: Colors.yellow,
                    height: 20
                )
            ],
        ),
    );
  }
}