import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Add%20New%20Address/components/add_new_address_view_body.dart';
import 'package:nowproject/Screens/Notification/notification_view.dart';
import 'package:nowproject/components/custom_app_bar/build_app_bar.dart';
import 'package:nowproject/utility/custom_nav_bar.dart';

class AddNewAddressView extends StatelessWidget {
  const AddNewAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Directionality(textDirection: TextDirection.rtl, 
    child: Scaffold(
        appBar: buildAppBar(
          context,
          titleAppBar: 'اضافة عنوان جديد',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
        ),
        body: const AddNewAddressViewBody(),
        bottomNavigationBar: const CustomNavBar(),
      ),
    );
  }
}

