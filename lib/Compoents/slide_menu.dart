import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_shine/Compoents/hard_skill.dart';
import 'package:portfolio_shine/Constraints/address_infro.dart';
import '../Constraints/color_constriants.dart';
import '../Constraints/cv_downlaod.dart';
import '../Constraints/dipaloma_main.dart';
import '../Constraints/parent_socialinfro.dart';
import '../Constraints/soft_skill.dart';
import 'my_infro.dart';
class SlideMenu extends StatelessWidget {
  const SlideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: bgColor,
        child:    const Column(
          children: [
            MyInfro(),
            Expanded(child:
            SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child:  Column(
                children: [
                  AddressIntro(title: "Residence", text: "Myanmar"),
                  AddressIntro(title: "City", text: "Yangon"),
                  AddressIntro(title: "Age", text: "20"),
                  Skill(),
                  SoftSkills(),
                  DipalomaMain(),
                  CvDownload(),
                  ParentSocialInfrro()

                   ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

















