import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Notification/components/custom_button_notifications_items.dart';

class CustomButtonNotifications extends StatelessWidget {
  const CustomButtonNotifications({super.key,});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
          width: double.infinity,
          height: 70.h,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: const Color(0xff000000),
              width: 1.w,
            ),
          ),
          child:const CustomButtonNotificationsItem(titletext: '02/05/2023',
          subtitletext: 'احجزي لك معاونة شهرية ابتداءا من‏2100 ريال',),
            ),
    );
  }
}
