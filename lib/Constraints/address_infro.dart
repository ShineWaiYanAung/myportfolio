import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_shine/Constraints/color_constriants.dart';

class AddressIntro extends StatelessWidget {
  final String title, text;
  const AddressIntro({
    required this.title,
    required this.text,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:  defaultPadding /2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
          style: GoogleFonts.frankRuhlLibre(
            fontSize : 12,
            fontWeight : FontWeight.w200,
            color : TextColor,
          ),),
          Text(text,
          style: GoogleFonts.frankRuhlLibre(
            fontSize :12,
            fontWeight : FontWeight.w200,
            color : Colors.grey,
          ),),
        ],
      ),
    );
  }
}
