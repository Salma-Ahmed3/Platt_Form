import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Home/components/home_view_body.dart';
import 'package:nowproject/Screens/Notification/notification_view.dart';
import 'package:nowproject/components/custom_app_bar/build_app_bar.dart';
import 'package:nowproject/components/custom_menue_bar/menue_bar.dart';
import 'package:nowproject/utility/custom_nav_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = 'HomeView';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const CustomNavBar(),
        body: const HomeViewBody(),
        drawer: const MenueBar(),
        appBar: buildAppBar(
          context,
          titleAppBar: 'مرحبا عميلنا العزيز',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
        ),
      ),
    );
  }
}

