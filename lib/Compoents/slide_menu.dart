import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_shine/Compoents/hard_skill.dart';
import 'package:portfolio_shine/Constraints/address_infro.dart';
import '../Constraints/color_constriants.dart';
import '../Constraints/soft_skill.dart';
import 'my_infro.dart';
class SlideMenu extends StatelessWidget {
  const SlideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: bgColor,
        child:    Column(
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
                  Skill(),
                  SoftSkills(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Divider(height: 5,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: defaultPadding/2),
                    child: Text("Diploma & Certificate",style: label,),
                  ),
                  Row(
                    children: [

                      Text("Higher Dipaloma at GUSTO university",style: subLabel,)
                    ],
                  ),
                  Image(image: AssetImage("assets/profile.jpg"))
                    


                   ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}










