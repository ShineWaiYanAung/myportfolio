import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialInfo extends StatefulWidget {
  final String path;
  final String urlLink;

  const SocialInfo({
    required this.path,
    required this.urlLink,
    Key? key, 
  }) : super(key: key);

  @override
  State<SocialInfo> createState() => _SocialInfoState();
}

class _SocialInfoState extends State<SocialInfo> {
  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse(widget.urlLink);
    Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
    return IconButton(
      onPressed: _launchUrl,
      icon: SvgPicture.asset(widget.path,width: 20,height: 15,),
    );
  }
}

