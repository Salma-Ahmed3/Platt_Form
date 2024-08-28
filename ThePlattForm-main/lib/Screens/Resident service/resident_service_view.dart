import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Add%20New%20Address/add_new_address_view.dart';
import 'package:nowproject/Screens/Choosing%20Carrer/chossing_carrer_view.dart';
import 'package:nowproject/Screens/Notification/notification_view.dart';
import 'package:nowproject/Screens/Resident%20service/components/resident_service_view_body.dart';
import 'package:nowproject/components/custom_app_bar/build_app_bar.dart';
import 'package:nowproject/utility/app_images.dart';
import 'package:nowproject/utility/custom_nav_bar.dart';
import 'package:svg_flutter/svg.dart';

class ResidentServiceView extends StatelessWidget {
  const ResidentServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
  appBar: buildAppBar(
          context,
          titleAppBar: 'اختيار العنوان',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
        ),
        body:  ResidentServiceViewBody(onChanged: (bool value) { 
         Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ChossingCarrerView()),
            );
            },),
        bottomNavigationBar: const CustomNavBar(),
        floatingActionButton: Row(
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
