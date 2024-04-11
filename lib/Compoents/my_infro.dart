import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constraints/color_constriants.dart';
class MyInfro extends StatelessWidget {
  const MyInfro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: const  Color(0xFF242430)
        ,child:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:  [
          Spacer(flex: 2,),

           const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/profile.jpg"),
          ),
          Text("Shine Wai Yan Aung",
            style: label,),
          Text("I am an flutter developer",
            style: subLabel
            ),
          Spacer(flex: 2,),

        ],),),
    );
  }
}