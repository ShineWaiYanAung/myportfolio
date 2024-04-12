import 'package:flutter/material.dart';

import 'color_constriants.dart';
class CvDownload extends StatelessWidget {
  const CvDownload({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        const Divider(
          color: Colors.grey,
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding/2),
          child: TextButton(
            onPressed: (){},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.download,color: TextColor,
                  size: 18,),
                Text("Download CV",style: label,),
              ],
            ),
          ),
        ),
      ],
    );
  }
}