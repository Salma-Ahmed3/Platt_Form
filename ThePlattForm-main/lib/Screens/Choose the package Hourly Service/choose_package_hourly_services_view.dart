import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Hourly%20Service/components/choose_package_hourly_services_view_body.dart';
import 'package:nowproject/Screens/Design%20your%20presentation/design_your_presentation_view.dart';
import 'package:nowproject/Screens/Notification/notification_view.dart';
import 'package:nowproject/components/custom_app_bar/build_app_bar.dart';
import 'package:nowproject/utility/app_text_style.dart';
import 'package:nowproject/utility/custom_nav_bar.dart';

class ChoosePackageHourlyServicesView extends StatelessWidget {
  const ChoosePackageHourlyServicesView({super.key});
static const routeName = 'ChoosePackageHourlyServicesView';
  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const CustomNavBar(),
        body: const ChoosePackageHourlyServicesViewBody(),
        appBar: buildAppBar(
          context,
          titleAppBar: 'اختيار باقتك',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
        ),
         floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DesignYourPresentationView()),
                );
              },
              child: Container(
                height: 46,
                width: 168,
                decoration: BoxDecoration(
                  color:  Colors.black,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  )
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('صمم باقة تناسبك' , style: TextStyles.regular14.copyWith(color: Colors.white),)),
              )
            )
          ],
        ),
      ),
    );
  }
}