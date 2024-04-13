import 'package:flutter/material.dart';

import '../Constraints/color_constriants.dart';
class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.of(context).
      push(MaterialPageRoute(builder: (context) =>
          Scaffold(
            appBar: AppBar(
              leading: IconButton(

                  onPressed: ()=>Navigator.of(context).pop(),
                  icon:
                  const Icon(Icons.arrow_back_ios,
                    color: TextColor,)),
              backgroundColor: bgColor,
              title: Text('Shine Wai Yan Aung',style: label,),
            ),
            body: Center(
              child: Hero(
                tag: "profile",
                child: Image.asset("assets/profile.jpg"),
              ),
            ),
          ),)),
      child: const Hero(
        tag: 'profile',
        child: CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage("assets/profile.png"),
        ),
      ),
    );
  }
}