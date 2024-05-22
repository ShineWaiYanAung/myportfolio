import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_shine/Compoents/slide_menu.dart';
import 'package:portfolio_shine/Constraints/color_constriants.dart';

class Screen extends StatelessWidget {
  final List<Widget> children;
  const Screen({required this.children, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isMobile(context)
          ? AppBar(
              iconTheme: IconThemeData(color: TextColor),
              backgroundColor: bgColor,
              centerTitle: true,
              title: Text(
                "Portfolio",
                style: GoogleFonts.frankRuhlLibre(
                  color: TextColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          : null,
      drawer: isDesktop(context) ?  null: SlideMenu(),
      body: Container(
        constraints: const BoxConstraints(maxWidth: maxWdith),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (isDesktop(context)) const Expanded(flex: 2, child: SlideMenu()),
            const SizedBox(
              width: defaultPadding / 2,
            ),
            Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [...children],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
