import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Notification/notification_view.dart';
import 'package:nowproject/Screens/contact_us/components/contact_us_view_body.dart';
import 'package:nowproject/components/custom_app_bar/build_app_bar.dart';
import 'package:nowproject/utility/custom_nav_bar.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});
static const routeName = 'ContactUs'; 
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const CustomNavBar(),
        body: const ContactUsViewBody(),
        appBar: buildAppBar(
          context,
          titleAppBar: 'اتصل بنا',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
        ),
      ),
    );
  }
}