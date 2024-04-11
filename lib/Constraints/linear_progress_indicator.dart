import 'package:flutter/material.dart';

import 'color_constriants.dart';

class LinearprogressIndicator extends StatelessWidget {
  final String title;
  final double percent;
  const LinearprogressIndicator({
    super.key, required this.title, required this.percent,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding/2),
      child: TweenAnimationBuilder(tween: Tween<double>(begin: 0, end: percent),
        duration: defaultDuration, builder: (context,double value, child) =>
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title,
                      style: subLabel,),
                    Text((value*100).toInt().toString() + "%",
                      style: subLabel,)
                  ],
                ),
                SizedBox(height: defaultPadding / 2,),
                LinearProgressIndicator(
                  value: value,
                  backgroundColor: bgColor,
                  color: primarycolor,
                    )
              ],
            ),
      ),
    );
  }
}