import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'color_constriants.dart';
import 'hero_animation.dart';
class DipalomaMain extends StatelessWidget {
  const DipalomaMain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(height: 5,
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding/2),
          child: Text("Diploma & Certificate",style: label,),
        ),
        Dipaloma_animation(title: "Computer Science Foundation Certificate at GUSTO university", Imagepath: "",tag: "",),
        Dipaloma_animation(title: "Higher Diploma at GUSTO university", Imagepath: 'profile.jpg',tag: "pro",),
        Dipaloma_animation(title: 'Basic to Im-terminate Flutter Certificate at Let"sLearn Programming', Imagepath: 'flutterCeti.png',tag: "Ceti",)
      ]
      ,
    );
  }
}