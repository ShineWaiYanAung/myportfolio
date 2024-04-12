import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
    return Scaffold(

      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWdith),
          child: Row(
            children: [
                Expanded(
                flex: 2,
                child: SlideMenu()),
              Expanded(
                flex: 7,
                child: Container(
                  color: Colors.blue,
                ))
            ],
          ),
        ),
      ),
    );
  }
}