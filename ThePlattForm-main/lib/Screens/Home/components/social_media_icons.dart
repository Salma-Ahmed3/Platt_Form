
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({super.key, required this.icon});
final Widget icon;


  @override
  Widget build(BuildContext context) {
    return  Row(
       children: [
       CircleAvatar(
         radius: 20.r,
         backgroundColor: const Color(0xffACACAC),
         child: 
      icon
       )
      ],
    );
  }
}
