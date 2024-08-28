import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Chossing%20Maid/components/custom_image_maid.dart';
import 'package:nowproject/Screens/Chossing%20Maid/components/custom_maid_skills.dart';
import 'custom_name_and_age_maid.dart';

class CustomMaidDetailesItem extends StatelessWidget {
  const CustomMaidDetailesItem({super.key, this.onTap});
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13 ),
      child: Column(
        children: [
          SizedBox(height: 17.w ,),
              Row(
                children: [ 
                  const CustomImageMaid(),
                  SizedBox(width: 12.w ,),
                    const CustomNameAndAgeMaid(),
                SizedBox(width: 38.w ,),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: GestureDetector(
                      onTap: onTap,
                child: const Icon(Icons.arrow_back))),
                  ],
              ),
                      SizedBox(height: 20.w ,),
                      const CustomMaidSkills(),
      
        ],
      ),
    );
  }
}
