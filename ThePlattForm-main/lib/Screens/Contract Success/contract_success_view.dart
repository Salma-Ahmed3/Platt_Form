import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Contract%20Success/components/contract_success_view_body.dart';
import 'package:nowproject/Screens/Notification/notification_view.dart';
import 'package:nowproject/components/custom_app_bar/build_app_bar.dart';
import 'package:nowproject/utility/custom_nav_bar.dart';

class ContractSuccessView extends StatelessWidget {
  const ContractSuccessView({super.key});
static const routeName = 'ContractSuccessView';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const CustomNavBar(),
        body: const ContractSuccessViewBody(),
        appBar: buildAppBar(
          context,
          titleAppBar: 'نجاح التعاقد',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
        ),
      ),
    );
    }
    }