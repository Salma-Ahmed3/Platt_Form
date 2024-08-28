import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Design%20your%20presentation/components/design_your_presentation_view_body.dart';
import 'package:nowproject/Screens/Notification/notification_view.dart';
import 'package:nowproject/components/custom_app_bar/build_app_bar.dart';
import 'package:nowproject/utility/custom_nav_bar.dart';

class DesignYourPresentationView extends StatelessWidget {
  const DesignYourPresentationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const CustomNavBar(),
        body: const DesignYourPresentationViewBody(),
        appBar: buildAppBar(
          context,
          titleAppBar: 'صمم عرضك',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
          
        ), ));
  }
}