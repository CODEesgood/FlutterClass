import 'package:flutter/material.dart';
import 'package:flutter_aug_5/size_config.dart';

class Artwork extends StatelessWidget {
  const Artwork({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.red,
            height: SizeConfig.blockSizeVertical! * 5
          ),
          Container(
            color: Colors.orange,
            height: SizeConfig.blockSizeVertical! * 65,
            child: Column(
                children: [
                   Entry(),
                   Entry(),
                   Entry(),
                   Entry(),
                ],
            )

          ),
          Container(
            color: Colors.white,
            height: SizeConfig.blockSizeVertical! * 25
          ),
          Container(
            color: Colors.blue, 
            height: SizeConfig.blockSizeVertical! * 5
          ),

        ],
      )
    );
  }
}

class Entry extends StatelessWidget {
  const Entry({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
        children: [
        Container(
            color: Colors.yellow,
            width: SizeConfig.blockSizeHorizontal! * 20,
            height: SizeConfig.blockSizeVertical! * 9
        ),
        SizedBox(width: 30,),
        Column(children: [
            Container(
            color: Colors.green,
            width: SizeConfig.blockSizeHorizontal! * 70,
            height: SizeConfig.blockSizeVertical! * 3
            ),
            SizedBox(height: SizeConfig.blockSizeVertical! * 1,),
            Container(
            color: Colors.green,
            width: SizeConfig.blockSizeHorizontal! * 70,
            height: SizeConfig.blockSizeVertical! * 5
            )
        ])
        ],
        ),
    );
  }
}