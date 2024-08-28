import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Contract/components/contract_view_body.dart';
import 'package:nowproject/components/custom_app_bar/build_app_bar.dart';
import 'package:nowproject/utility/custom_nav_bar.dart';

import '../Notification/notification_view.dart';

class ContractView extends StatelessWidget {
  const ContractView({super.key});
static const routeName = 'ContractView';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const CustomNavBar(),
        body: const ContractViewBody(),
        appBar: buildAppBar(
          context,
          titleAppBar: 'تفاصيل العقد',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
        ),
      ),
    );
  }
}