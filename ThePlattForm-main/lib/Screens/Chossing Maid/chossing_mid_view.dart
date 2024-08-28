import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Chossing%20Maid/components/chossing_maid_view_body.dart';
import 'package:nowproject/Screens/Notification/notification_view.dart';
import 'package:nowproject/components/custom_app_bar/build_app_bar.dart';
import 'package:nowproject/utility/custom_nav_bar.dart';

class ChoosingMaidView extends StatelessWidget {
  const ChoosingMaidView({super.key});
  static const routeName = 'NextPage';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const CustomNavBar(),
        body: const ChoosingMaidViewBody(),
        appBar: buildAppBar(
          context,
          titleAppBar: 'اختيار العاملة',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
        ),
      ),
    );
  }
}
