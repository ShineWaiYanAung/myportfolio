import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_constriants.dart';

class MyAnimatedText extends StatelessWidget {
  const MyAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding ,vertical: defaultPadding/2),
      child: DefaultTextStyle(
        style: GoogleFonts.frankRuhlLibre(
          fontSize: isMobileText(context)? 12: 15,
          fontWeight : FontWeight.w800,
          color : Colors.grey,
        ),
        child: Row(
          children: [
            Text("< "),
            AnimatedTextKit (
              isRepeatingAnimation : true,
              totalRepeatCount: 100,
              animatedTexts: [
                TyperAnimatedText("I am an flutter developer"),
                TyperAnimatedText("Since 2023, I've delved deep into Flutter development,"),
                TyperAnimatedText("Mastering the art of creating responsive web applications")
              ],
            ),
            Text(" >"),
          ],
        ),
      ),
    );
  }
}