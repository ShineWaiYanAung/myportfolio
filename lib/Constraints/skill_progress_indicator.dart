import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:portfolio_shine/Constraints/color_constriants.dart";

class SkillCircularIndicator extends StatelessWidget {
  final String title;
  final double percent;
  const SkillCircularIndicator({
    super.key,
    required this.title,
    required this.percent
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(aspectRatio: 1.25,
        child: TweenAnimationBuilder(tween: Tween<double>(begin: 0 , end : percent ), 
        duration: defaultDuration, 
        builder: (context, double value, child)=>
           Stack(
             fit: StackFit.expand,
             children: [CircularProgressIndicator(
             value: value,
             color: primarycolor,),
             Center(
               child: Text(
                 (value* 100).toString()+ "%",
                 style: subLabel
               ),
             )]
           ),
        ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(title,
          style: subLabel),
        )
      ],
    );
  }
}