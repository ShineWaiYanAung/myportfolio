import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../Models/Project.dart';
import 'color_constriants.dart';
class ProjectShower extends StatelessWidget {
  const ProjectShower({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding/2),
          child: Text("My Projects",
            style:  GoogleFonts.frankRuhlLibre(
              fontSize : isMobileText(context) ? 24 : 28,
              fontWeight : FontWeight.bold,
              color : TextColor,),
          ),

        ),
        GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: demo_project.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isMobileView(context)? 2 : 3 ,
                crossAxisSpacing: defaultPadding,
                mainAxisSpacing: defaultPadding),
            itemBuilder: (context, index) =>
                ProjectHolder(project: demo_project[index] ,)
        )
      ],
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
    return Container(
      color: secondaryColor,
      padding : EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(project.title!,
            maxLines: 2,
            style: label,
          ),
          ReadMoreText(
            textAlign: TextAlign.start,
            project.description!,
            trimMode: TrimMode.Line,
            trimLines: 2,

            style: subLabel,),
          Expanded(child: Image.asset("bg.jpeg",fit: BoxFit.cover,)),
        ],
      ),);
  }
}