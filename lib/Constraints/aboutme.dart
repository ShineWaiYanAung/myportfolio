import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_constriants.dart';


class AboutMeForDeskTop extends StatelessWidget {
  const AboutMeForDeskTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width:500,
            height: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: defaultPadding),
                  child: Text("About Me",style: GoogleFonts.frankRuhlLibre(
                    fontSize : isMobileText(context) ? 24 : 28,
                    fontWeight : FontWeight.w500,
                    color : TextColor,
                  ),),
                ),
                Text("From 2023 to 2025, I attended GUSTO University, "
                    "\none of the leading private technical universities in Myanmar. "
                    "\nI studied Flutter courses from Let's Learn Programming Myanmar. "
                    "\nI have coding experiences such as languages such as"
                    "\nHTML ,CSS ,JAVA, Dart, and FLUTTER"
                    "\nAmong them,Flutter and Dart are my main coding languages."
                    "\nOver the past year, I have been actively involved in building my own app projects. "
                    "\nWorking with Flutter has never failed to interest me."
                    ,textAlign: TextAlign.start,
                    style: GoogleFonts.frankRuhlLibre(

                      fontSize: isMobileText(context)? 12: 15,
                      fontWeight : FontWeight.w800,
                      height : 1.8,

                      color : Colors.grey,
                    ),),
              ],
            ),
          ),
          Container(
            width: 400,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset("profile.jpg",fit: BoxFit.cover,),
            ),
          )

        ],
      ),
    );
  }
}
