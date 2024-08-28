import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Home/components/test_page.dart';
import 'package:nowproject/Screens/Home/home_view.dart';
import 'package:nowproject/Screens/My%20Requests/my_requests_view.dart';
import 'package:nowproject/Screens/contact_us/contact_us_view.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'الرئيسية',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: 'تعاقداتي',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: 'طلباتي',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: 'العروض',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.call),
          label: 'اتصل بنا',
        ),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushReplacementNamed(
             
              context,
              HomeView.routeName,
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TestPage()),
            );
            break;
          case 2:
            Navigator.pushReplacementNamed(
             
              context,
              MyRequestsView.routeName,
            );
            break;
          case 3:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TestPage()),
            );
            break;
          case 4:
            Navigator.pushReplacementNamed(
              context,
              ContactUsView.routeName,
            );
            break;
        }
      },
    );
  }
}
