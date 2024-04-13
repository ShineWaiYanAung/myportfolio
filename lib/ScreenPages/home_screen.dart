import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_shine/ScreenPages/screen.dart';

import '../Constraints/color_constriants.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Screen(
        children: [
          AspectRatio(aspectRatio: 3,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset("assets/bg.jpeg",
                  fit: BoxFit.cover,),
                Container(color: darkColor.withOpacity(0.40),),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                      child: Text("Welcome,\nI'm Shine Wai Yan Aung",
                      style: GoogleFonts.frankRuhlLibre(
                        fontSize : 26,
                        fontWeight : FontWeight.w800,
                        color : bgColor,
                      ),),

                    )
                  ],
                )
              ],
            ),
          ),

        ]);
  }
}
