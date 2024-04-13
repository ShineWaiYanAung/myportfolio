import 'package:flutter/material.dart';

import 'color_constriants.dart';
import 'dipaloma.dart';

class Dipaloma_animation extends StatelessWidget {
  final String title,Imagepath,tag;
  const Dipaloma_animation({super.key, required this.title, required this.Imagepath, required this.tag, });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context) => Scaffold(
          appBar: AppBar(
            backgroundColor: bgColor,
            title: Text(title,style: label,) ,
            leading: IconButton(
                onPressed: ()=>Navigator.of(context).pop(),
                icon: const Icon(Icons.arrow_back_ios,
                  color: TextColor,)),
          ),
          body: Center(
            child: Hero(
                tag: tag,
                child: Image.asset(Imagepath)),
          ),
        ),)),
        child:  Hero(
            tag: tag,
            child: Dipaloma(title: title)));
  }
}
