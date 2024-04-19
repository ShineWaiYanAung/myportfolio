import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_shine/Constraints/color_constriants.dart';
import 'package:readmore/readmore.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children:[ Image.asset("bg2.jpg",
                fit: BoxFit.cover,),
        Container(color:  bgColor.withOpacity(0.40),),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("About Me",style: GoogleFonts.frankRuhlLibre(
                fontSize : isMobileText(context) ? 24 : 28,
                fontWeight : FontWeight.w500,
                color : TextColor,
              ),),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  child: ReadMoreText("From 2023 to 2025, I attended GUSTO University, "
                      "\none of the leading private technical universities in Myanmar. "
                      "\nAdditionally, I studied Flutter courses from Let's Learn Programming Myanmar. "
                      "\nOver the past year, I have been actively involved in building my own app projects. "
                      "\nWorking with Flutter has never failed to interest me."
                  ,textAlign: TextAlign.justify,
                    trimCollapsedText: "showmore",

                  style: GoogleFonts.frankRuhlLibre(

                    fontSize: isMobileText(context)? 12: 15,
                    fontWeight : FontWeight.w800,
                    height : 1.8,

                    color : Colors.grey,
                  ),),
                ),
              ),




            ],
          ),
        )
        ],
    ),
    );
  }
}
