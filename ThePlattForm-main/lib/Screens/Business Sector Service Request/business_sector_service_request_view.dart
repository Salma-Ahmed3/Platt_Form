import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Business%20Sector%20Service%20Request/components/business_sector_service_request_view_body.dart';
import 'package:nowproject/Screens/Notification/notification_view.dart';
import 'package:nowproject/components/custom_app_bar/build_app_bar.dart';
import 'package:nowproject/utility/custom_nav_bar.dart';

class BusinessSectorServiceRequestView extends StatelessWidget {
  const BusinessSectorServiceRequestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: buildAppBar(
            context,
            titleAppBar: 'طلب خدمة قطاع الأعمال',
            onPressedRightIcon: () {
              Navigator.of(context).pushNamed(NotificationView.routeName);
            },
            icon: const Icon(Icons.notifications),
          ),
          body: const BusinessSectorServiceRequestViewBody(),
          bottomNavigationBar: const CustomNavBar(),
        ),
    );
  }
}