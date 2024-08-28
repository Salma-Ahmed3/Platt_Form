import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Home/components/social_media_icons.dart';

class SocialMediaIconsItem extends StatelessWidget {
  const SocialMediaIconsItem({super.key, });

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(right: 25 , ),
      child: Row(
        children: [
        SocialMediaIcons(icon:  Image.asset ('assets/images/WhatsApp.png'),),
               SizedBox(width: 10.w,),
      
        SocialMediaIcons(icon:  Image.asset ('assets/images/xApp.png'),),
               SizedBox(width: 10.w,),
      
        SocialMediaIcons(icon:  Image.asset ('assets/images/linkedin.png')),
               SizedBox(width: 10.w,),
      
        SocialMediaIcons(icon:  Image.asset ('assets/images/instaIcon.png'),),
               SizedBox(width: 10.w,),
      
          const SocialMediaIcons(icon: Icon(Icons.facebook , color: Colors.white,),),
               SizedBox(width: 10.w,),
      
        SocialMediaIcons(icon:  Image.asset ('assets/images/TikTok.png'),),
        ],
      ),
    );
  }
}