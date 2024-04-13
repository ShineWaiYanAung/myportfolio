import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_shine/Compoents/slide_menu.dart';
import 'package:portfolio_shine/Constraints/color_constriants.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {

  @override
  Widget build(BuildContext context) {
    final scrreenwidht = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: isMobile(context)?  AppBar(
        iconTheme: IconThemeData(color: TextColor),
        backgroundColor:  bgColor,
        centerTitle: true,
        title: Text("Portfolio",style: GoogleFonts.frankRuhlLibre(
          color  : TextColor,
          fontSize : 25,
          fontWeight : FontWeight.w500,

        ),),
      ) : null,
      drawer: isMobile(context) ?  SlideMenu() : null,
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWdith),
          child: Row(
            children: [
              if(isDesktop(context))
                const Expanded(
                flex: 2,
                child: SlideMenu()),
              Expanded(
                flex: 7,
                child: Container(

                ))
            ],
          ),
        ),
      ),
    );
  }
}