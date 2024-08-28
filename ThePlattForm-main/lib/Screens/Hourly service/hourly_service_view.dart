import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Hourly%20service/components/hourly_services_view_body.dart';
import 'package:nowproject/Screens/Notification/notification_view.dart';
import 'package:nowproject/components/custom_menue_bar/menue_bar.dart';
import 'package:nowproject/utility/custom_nav_bar.dart';

import '../../components/custom_app_bar/build_app_bar.dart';

class HourlyService extends StatelessWidget {
  const HourlyService({super.key});

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
           drawer: const MenueBar(),
        appBar: buildAppBar(
          context,
          titleAppBar: 'اختر الخدمة',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
        ),
        body:const HourlyServicesViewBody() ,
        bottomNavigationBar: const CustomNavBar(),
      
      ),
    );
  }
}