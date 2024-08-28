import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Contract%20attachments/components/contract_attachments_view_body.dart';
import 'package:nowproject/Screens/Notification/notification_view.dart';
import 'package:nowproject/components/custom_app_bar/build_app_bar.dart';

import '../../utility/custom_nav_bar.dart';

class ContractAttachmentsView extends StatelessWidget {
  const ContractAttachmentsView({super.key});
static const routeName = 'ContractAttachmentsView';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const CustomNavBar(),
        body: const ContractAttachmentsViewBody(),
        appBar: buildAppBar(
          context,
          titleAppBar: 'مرفقات التعاقد',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
        ),
      ),
    );
  }
}