import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Home/components/custom_dot_circle.dart';
import 'package:nowproject/Screens/Home/components/custom_photo.dart';
import 'package:nowproject/Screens/Home/components/distinguished_services.dart';
import 'package:nowproject/Screens/Home/components/social_media_icons_item.dart';
import 'package:nowproject/Screens/Hourly%20service/hourly_service_view.dart';
import 'package:nowproject/Screens/Resident%20service/resident_service_view.dart';
import 'package:nowproject/utility/app_text_style.dart';
import 'package:nowproject/utility/custom_button.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
               SizedBox(height: 33.h,),
              const CustomPhoto(),
               SizedBox(height: 16.h,),
              const CustomDotCircle(),
               SizedBox(height: 24.h,),
              const DistinguishedServices(),
               SizedBox(height: 17.h,),
              CustomButton(
                titletext: 'خدمة بالساعة',
                subtitletext:'خدمات منزلية بنظام الساعات',
                colorSmallContainer: const Color(0xffD6D6D6),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HourlyService()),
                  );
                },
              ),
               SizedBox(height: 20.h,),
              CustomButton(
                titletext: 'خدمة مقيمة',
                subtitletext: 'نظام الباقات الشهرية والسنوية',
                colorSmallContainer: const Color(0xffACACAC),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ResidentServiceView()),
                  );
                },
              ),
               SizedBox(height: 36.h,),
               Text('نسعد بتواصلكم معنا من خلال', style: TextStyles.regular16,),
              const SizedBox(height: 23,),
              const SocialMediaIconsItem(),
            ],
          ),
        ),
    );
  }
}
