import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_shine/Constraints/skill_progress_indicator.dart';

import '../Constraints/color_constriants.dart';
class Skill extends StatelessWidget {
  const Skill({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const  Divider(
          height: 5,
          color: Colors.grey,
        ),
        Padding(
          padding:EdgeInsets.symmetric(vertical: defaultPadding/2),
          child: Text("Hard Skills",
            style: GoogleFonts.frankRuhlLibre(
              fontSize: 15,
              fontWeight : FontWeight.w500,
              color : TextColor,
            ),
          ),
        ),
        //Progress Indicator for skills
        const Row(
          children: [
            Expanded(child: SkillCircularIndicator(title: "Flutter", percent: 0.6)),
            Expanded(child: SkillCircularIndicator(title: "RestfulApi", percent: 0.5)),
            Expanded(child: SkillCircularIndicator(title: "Firebase", percent: 0.2)),
          ],
        )
      ],
    );
  }
}