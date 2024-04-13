import 'package:flutter/material.dart';
import 'package:portfolio_shine/Constraints/social_infro.dart';

import 'color_constriants.dart';

class ParentSocialInfrro extends StatelessWidget {
  const ParentSocialInfrro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(defaultPadding/2),
      decoration: BoxDecoration(
          color  : Color(0xFF24242E),
          borderRadius: BorderRadius.circular(10)
      ),
      child: const Row(children: [
        Spacer(),
        SocialInfo(urlLink: 'https://www.facebook.com/shine.wai.754918/', path: 'facebook.svg',),
        SocialInfo(urlLink: 'https://github.com/ShineWaiYanAung', path: 'github.svg',),
        SocialInfo(urlLink: 'https://www.linkedin.com/in/shinewai-yanaung-407b32263/', path: 'linkedin.svg',),


        Spacer(),
      ],),
    );
  }
}