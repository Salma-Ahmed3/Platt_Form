
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Home/components/test_page.dart';
import 'package:nowproject/utility/app_text_style.dart';

import '../../../utility/app_images.dart';

class CustomButtonNotificationsItem extends StatelessWidget {
  const CustomButtonNotificationsItem({super.key,required this.titletext, required this.subtitletext});
  // final void Function()? onDelete; 
final String titletext;
final String subtitletext;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 11),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   CircleAvatar(
                radius: 22.r,
                backgroundColor: Color(0xffD6D6D6),
              ),
                      Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(titletext, style: TextStyles.regular10),
                  Text(subtitletext, style: TextStyles.regular12),
                        ],
                      ),
                  GestureDetector(
                onTap: () {
                Navigator.of(context).pushNamed(TestPage.routeName);
                },
                child: Image.asset(
                  Assets.imagesDeleteIcon,
                  width: 12.w,
                  height: 14.h, 
                ),),
                ],
              ),
    );
  }
}