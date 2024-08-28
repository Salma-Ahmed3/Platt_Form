import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Notification/components/custom_button_notifications.dart';


class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child:  Column(
          children: [
            SizedBox(height: 28.h,),
            const CustomButtonNotifications(),
            SizedBox(height: 16.h,),
            const CustomButtonNotifications(),
            SizedBox(height: 16.h,),
            const CustomButtonNotifications(),
            SizedBox(height: 16.h,),
            const CustomButtonNotifications(),
            SizedBox(height: 16.h,),
            const CustomButtonNotifications(),
            SizedBox(height: 16.h,),
             ],
        ),
    );
  }
}


