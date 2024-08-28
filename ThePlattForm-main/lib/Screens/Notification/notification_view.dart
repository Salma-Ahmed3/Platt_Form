import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Notification/components/notification_view_body.dart';
import 'package:nowproject/components/custom_app_bar/build_app_bar.dart';
import 'package:nowproject/utility/custom_nav_bar.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  static const routeName = 'NotificationView';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: buildAppBar(
          context,
          titleAppBar: 'الإشعارات',
          onPressedRightIcon: () {
          },
          icon: const Icon(Icons.notifications),
        ),
        body: const NotificationViewBody(),
      bottomNavigationBar: const CustomNavBar(),

      ),
    );
  }
}