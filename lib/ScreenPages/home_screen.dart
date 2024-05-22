import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_shine/ScreenPages/screen.dart';
import '../Constraints/about_me.dart';
import '../Constraints/aboutme.dart';
import '../Constraints/color_constriants.dart';
import '../Constraints/home_screen.dart';
import '../Constraints/proeject_shower.dart';
import '../Constraints/social_infro.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Screen(children: [
      IntroducationHomeScreen(),
      isMobileView(context) ? AboutMeMobile() : AboutMeForDeskTop(),
      //ProjectShower(),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: defaultPadding),
            child: Text(
              "Hire Me",
              style: GoogleFonts.frankRuhlLibre(
                fontSize: isMobileText(context) ? 24 : 28,
                fontWeight: FontWeight.bold,
                color: TextColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              width: isMobileView(context) ? 400 : 800,
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  if (!isMobileView(context))
                    Image.asset(
                      "assets/avator.png",
                      fit: BoxFit.fill,
                    ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ContactInfro(
                        icon: Icon(Icons.email),
                        text: "shinewaiyanaung870@gmail.com",
                      ),
                      ContactInfro(
                        icon: Icon(Icons.phone),
                        text: "09790785178",
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: isMobileView(context) ? 20.0 : 0, top: 40),
                        child: Row(
                          children: [
                            SocialInfo(
                                urlLink:
                                    'https://www.facebook.com/shine.wai.754918/',
                                path: 'facebook.svg',
                                wid: 40,
                                hei: 35),
                            SizedBox(
                              width: 10,
                            ),
                            SocialInfo(
                                urlLink: 'https://github.com/ShineWaiYanAung',
                                path: 'github.svg',
                                wid: 40,
                                hei: 35),
                            SizedBox(
                              width: 10,
                            ),
                            SocialInfo(
                                urlLink:
                                    'https://www.linkedin.com/in/shinewai-yanaung-407b32263/',
                                path: 'linkedin.svg',
                                wid: 40,
                                hei: 35),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      )
    ]);
  }
}

class ContactInfro extends StatelessWidget {
  final Icon icon;
  final String text;
  const ContactInfro({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Icon(
                icon.icon,
                color: primarycolor,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: primarycolor,
                        width: 1.0), // Define the underline color and width
                  ),
                ),
                child: Text(
                  text,
                  style: label.copyWith(
                      decoration:
                          TextDecoration.none), // Remove default underline
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
