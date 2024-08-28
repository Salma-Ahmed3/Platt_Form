import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Add%20New%20Address/add_new_address_view.dart';
import 'package:nowproject/Screens/Choose%20Addrease/components/choose_address_view_body.dart';
import 'package:nowproject/Screens/Notification/notification_view.dart';
import 'package:nowproject/components/custom_app_bar/build_app_bar.dart';
import 'package:nowproject/utility/app_images.dart';
import 'package:nowproject/utility/custom_nav_bar.dart';
import 'package:svg_flutter/svg.dart';

class ChooseAddreseView extends StatelessWidget {
  const ChooseAddreseView({super.key});
static const routeName = 'ChooseAddreseView';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const CustomNavBar(),
        body: const ChooseAddressViewBody(),
        appBar: buildAppBar(
          context,
          titleAppBar: 'اختيار العنوان',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
          
        ),   floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddNewAddressView()),
                );
              },
              child: SvgPicture.asset(Assets.imagesAddIcon)
            )
          ],
        ),
      ),
    );
  }
}