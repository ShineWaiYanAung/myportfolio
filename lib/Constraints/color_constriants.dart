import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primarycolor = Color(0xFF7BC9FF);
const secondaryColor = Color(0xFF242430);
const TextColor = Color(0xFF8576FF);

const bgColor = Color(0xFF1E1E28);

const defaultPadding = 20.0;
const defaultDuration = Duration(seconds: 1);
const maxWdith = 1450.0;

final label    = GoogleFonts.frankRuhlLibre(
                   fontSize: 15,
                   fontWeight : FontWeight.w500,
                   color : TextColor
                  );
final subLabel = GoogleFonts.frankRuhlLibre(
                  fontSize: 12,
                  fontWeight : FontWeight.w500,
                  color : Colors.grey,
                  );


bool isDesktop(BuildContext context)=>
    MediaQuery.of(context).size.width >1100;
bool isMobile(BuildContext context)=>
    MediaQuery.of(context).size.width <1100;
bool isMobileText(BuildContext context)=>
    MediaQuery.of(context).size.width <645;
 bool isMobileView(BuildContext context)=>
    MediaQuery.of(context).size.width <890;
