import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Contract%20Details/components/contract_details_view_body.dart';
import 'package:nowproject/Screens/Notification/notification_view.dart';
import 'package:nowproject/components/custom_app_bar/build_app_bar.dart';
import 'package:nowproject/utility/custom_nav_bar.dart';

class ContractDetailsView extends StatelessWidget {
  const ContractDetailsView({super.key});
static const routeName = 'ContractDetailsView';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const CustomNavBar(),
        body: const ContractDetailsViewBody(),
        appBar: buildAppBar(
          context,
          titleAppBar: 'تفاصيل التعاقد',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
        ),
      ),
    );
  }
}