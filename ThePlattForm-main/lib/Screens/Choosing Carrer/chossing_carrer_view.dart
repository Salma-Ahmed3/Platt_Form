import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Choosing%20Carrer/components/chossing_carrer_view_body.dart';
import 'package:nowproject/components/custom_app_bar/build_app_bar.dart';
import 'package:nowproject/utility/custom_nav_bar.dart';
import '../Notification/notification_view.dart';

class ChossingCarrerView extends StatelessWidget {
  const ChossingCarrerView({super.key});
static const String routeName = 'ChossingCarrerView';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
      appBar: buildAppBar(
          context,
          titleAppBar: 'اختيار المهنة',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
        ),
        body: const ChossingCarrerViewBody(),
        bottomNavigationBar: const CustomNavBar(),
      ),
    );
  }
}
