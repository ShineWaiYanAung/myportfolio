import 'package:flutter/material.dart';

import 'color_constriants.dart';

class Dipaloma extends StatelessWidget {
  final  String title;
  const Dipaloma({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding/1.5),
      child: Row(
        children: [
          Icon(Icons.school,color: primarycolor,),
          SizedBox(width: defaultPadding/2,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding/2),
              child: Text(title,style: subLabel),
            ),
          )
        ],
      ),
    );
  }
}
