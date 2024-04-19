import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'animated_text.dart';
import 'color_constriants.dart';
class IntroducationHomeScreen extends StatelessWidget {
  const IntroducationHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AspectRatio(aspectRatio: 3,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("assets/bg.jpeg",
              fit: BoxFit.cover,),
            Container(color: bgColor.withOpacity(0.40),),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Text("Welcome,\nI'm Shine Wai Yan Aung",
                    style: GoogleFonts.frankRuhlLibre(
                      fontSize : isMobileText(context) ? 24 : 28,
                      fontWeight : FontWeight.w500,
                      color : TextColor,
                    ),),
                ),
                MyAnimatedText(),
                Padding(
                  padding:  EdgeInsets.symmetric(vertical: defaultPadding/2,horizontal: defaultPadding),
                  child: ElevatedButton(onPressed: (){},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(bgColor),
                      ),
                      child: Text("Contact Me!",style: GoogleFonts.frankRuhlLibre(
                        fontSize : isMobileText(context) ? 12 :17,
                        fontWeight : FontWeight.bold,
                        color : TextColor,
                      ),)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}