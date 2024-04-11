import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_shine/Compoents/skill_progress_indicator.dart';

import 'package:portfolio_shine/Constraints/address_infro.dart';

import '../Constraints/color_constriants.dart';
import 'my_infro.dart';
class SlideMenu extends StatelessWidget {
  const SlideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: bgColor,
        child:  Column(
          children: [
            MyInfro(),
            Expanded(child:
            SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AddressIntro(title: "Residence", text: "Myanamr"),
                  AddressIntro(title: "City", text: "Yangon"),
                  AddressIntro(title: "Age", text: "20"),
                 const  Divider(
                    height: 5,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: defaultPadding/2),
                    child: Text("Skills",style: GoogleFonts.frankRuhlLibre(
                      fontSize: 15,
                      fontWeight : FontWeight.w500,
                      color : TextColor,
                    ),
                    ),
                  ),
                  //Progress Indicator for skills
   Wrap(
  spacing: defaultPadding,
  runSpacing: defaultPadding,
  children: [
    SkillCircularIndicator(title: "Flutter", percent: 0.6),
    SkillCircularIndicator(title: "RestfulApi", percent: 0.5),
    SkillCircularIndicator(title: "Firebase", percent: 0.2),
  ],
),

                   ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}




