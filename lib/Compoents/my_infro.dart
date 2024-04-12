import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_shine/Compoents/profile.dart';


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
          const Spacer(flex: 2,),
          const Profile(),
          Text("Shine Wai Yan Aung",
            style: label,),
          Text("I am an flutter developer",
            style: subLabel
            ),
          const Spacer(flex: 2,),

        ],),),
    );
  }
}

