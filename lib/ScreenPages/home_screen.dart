import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_shine/Constraints/about_me.dart';
import 'package:portfolio_shine/Models/Project.dart';
import 'package:portfolio_shine/ScreenPages/screen.dart';

import '../Constraints/animated_text.dart';
import '../Constraints/color_constriants.dart';
import '../Constraints/home_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return  Screen(
        children: [
          IntroducationHomeScreen(),
          // AboutMe()
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding/2),
            child: Text("My Projects",
            style:  GoogleFonts.frankRuhlLibre(
            fontSize : 20,
            fontWeight : FontWeight.bold,
            color : TextColor,),
                ),
           
          ),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: demo_project.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3 ,
                crossAxisSpacing: defaultPadding,
                mainAxisSpacing: defaultPadding),
            itemBuilder: (context, index) =>
            ProjectHolder(project: demo_project[index] ,)
          )]
    );
  }
}

class ProjectHolder extends StatelessWidget {
  final Project project;
  const ProjectHolder({
    super.key, required this.project,
  });

  @override
  Widget build(BuildContext context) {
    return Container(color: secondaryColor,
    padding : EdgeInsets.all(defaultPadding),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(project.title!,
        maxLines: 2,
          style: label,
        ),
        Text(project.description!,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: subLabel,)
      ],
    ),);
  }
}



