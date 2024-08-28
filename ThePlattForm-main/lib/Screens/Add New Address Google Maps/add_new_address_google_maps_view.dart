import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Add%20New%20Address%20Google%20Maps/components/add_new_address_google_maps_view_body.dart';
import 'package:nowproject/Screens/Notification/notification_view.dart';
import 'package:nowproject/components/custom_app_bar/build_app_bar.dart';
import 'package:nowproject/utility/custom_nav_bar.dart';

class AddNewAddressGoogleMapsView extends StatelessWidget {
  const AddNewAddressGoogleMapsView({super.key});
static const String routeName = 'add_new_address_google_maps_view';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: buildAppBar(
            context,
            titleAppBar: 'اضافة عنوان جديد',
            onPressedRightIcon: () {
              Navigator.of(context).pushNamed(NotificationView.routeName);
            },
            icon: const Icon(Icons.notifications),
          ),
          body: const AddNewAddressGoogleMapsViewBody(),
          bottomNavigationBar: const CustomNavBar(),
        ),
    );
  }
}