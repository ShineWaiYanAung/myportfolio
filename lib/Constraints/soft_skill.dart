import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_constriants.dart';
import 'linear_progress_indicator.dart';
class SoftSkills extends StatelessWidget {
  const SoftSkills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const  Divider(height: 5,
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Soft Skills",
            style: GoogleFonts.frankRuhlLibre(
              fontSize: 15,
              fontWeight : FontWeight.w500,
              color : TextColor,
            ),),
        ),
        LinearprogressIndicator(title: "Collaboration", percent: 0.9),
        LinearprogressIndicator(title: "Time Management", percent: 0.8),
        LinearprogressIndicator(title: "Communication", percent: 1),
      ],
    );
  }
}