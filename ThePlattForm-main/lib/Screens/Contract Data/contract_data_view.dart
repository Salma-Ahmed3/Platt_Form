import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Contract%20Data/components/contract_data_view_body.dart';
import 'package:nowproject/Screens/Notification/notification_view.dart';
import 'package:nowproject/components/custom_app_bar/build_app_bar.dart';
import 'package:nowproject/utility/custom_nav_bar.dart';

class ContractDataView extends StatelessWidget {
  const ContractDataView({super.key});
static const routeName = 'ContractDataView';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const CustomNavBar(),
        body: const ContractDataViewBody(),
        appBar: buildAppBar(
          context,
          titleAppBar: 'بيانات التعاقد',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
        ),
      ),
    );
  }
}