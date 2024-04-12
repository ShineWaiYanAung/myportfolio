import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color_constriants.dart';
import 'dipaloma.dart';
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
        const Dipaloma(title: 'Computer Science Foundation Certificate at GUSTO university',),
        const Dipaloma(title: 'Higher Diploma at GUSTO university',),
        GestureDetector(
            onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context) => Scaffold(
              appBar: AppBar(
                backgroundColor: bgColor,
                title:Text(
                  'Basic to Im-terminate Flutter Certificate at Let"sLearn Programming',style: label,) ,
                leading: IconButton(
                    onPressed: ()=>Navigator.of(context).pop(),
                    icon: const Icon(Icons.arrow_back_ios,
                    color: TextColor,)),
              ),
                body: Center(
                  child: Hero(
                      tag: "Ceti",
                      child: Image.asset("flutterCeti.png")),
                ),
            ),)),
            child: const Hero(
                tag: "Ceti",
                child: Dipaloma(title: 'Basic to Im-terminate Flutter Certificate at Let"sLearn Programming',))),
      ],
    );
  }
}