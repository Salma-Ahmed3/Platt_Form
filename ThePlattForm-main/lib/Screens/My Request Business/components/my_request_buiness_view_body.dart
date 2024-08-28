import 'package:flutter/material.dart';
import 'package:nowproject/Screens/My%20Request%20Business/my_request_buiness_view.dart';
import 'package:nowproject/Screens/My%20Request%20Hours/my_request_hourly_view.dart';
import 'package:nowproject/Screens/My%20Requests/my_requests_view.dart';
import 'package:nowproject/Screens/My%20Requests/components/custom_container_in_my_request.dart';
import 'package:nowproject/Screens/My%20Requests/components/custom_rectangle_in_my_request.dart';

class MyRequestBuinessViewBody extends StatefulWidget {
  const MyRequestBuinessViewBody({super.key});

  @override
  State<MyRequestBuinessViewBody> createState() => _MyRequestBuinessViewBodyState();
}

class _MyRequestBuinessViewBodyState extends State<MyRequestBuinessViewBody> {
  String? selectedRequest;

  void _onRequestSelected(String requestName) {
    setState(() {
      selectedRequest = requestName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 29),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomContainerInMyRequest(
                  nameMyRequest: 'الأفراد',
                  isSelected: selectedRequest == 'الأفراد',
                  onTap: () {
                    _onRequestSelected('الأفراد');
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const MyRequestsView(),
                      ),
                    );
                  },
                  color: selectedRequest == 'الأفراد' ? Colors.black : const Color(0xffD6D6D6),
                  colorText: selectedRequest == 'الأفراد' ? Colors.white : Colors.black,
                ),
                const SizedBox(width: 10),
                CustomContainerInMyRequest(
                  nameMyRequest: 'الساعات',
                  isSelected: selectedRequest == 'الساعات',
                  onTap: () {
                    _onRequestSelected('الساعات');
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const MyRequestHourlyView(),
                      ),
                    );
                  },
                  color: selectedRequest == 'الساعات' ? Colors.black : const Color(0xffD6D6D6),
                  colorText: selectedRequest == 'الساعات' ? Colors.white : Colors.black,
                ),
                const SizedBox(width: 10),
                CustomContainerInMyRequest(
                  nameMyRequest: 'الأعمال',
                  isSelected: selectedRequest == 'الأعمال',
                  onTap: () {
                    _onRequestSelected('الأعمال');
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const MyRequestBuinessView(),
                      ),
                    );
                  },
                  color: selectedRequest == 'الأعمال' ? const Color(0xffD6D6D6): Colors.black ,
                  colorText: selectedRequest == 'الأعمال' ? Colors.black : Colors.white,
                ),
              ],
            ),
            const SizedBox(height: 23),
            const CustomRectangleInMyRequest(
              heightContainer: 53,
              isLatest: true,
              titleName: 'Lead-BUSINESS-NO9822',
              firstText: 'شركة الشركة للاعاشة : صاحب الطلب',
              secoundText: 'تاريخ الطلب : 20/05/2021',
              fourText: 'تفاصيل الطلب', 
              fiveText: 'نحتاج إلى فريق عمل كامل لمكان في الرياض لمدة 5 شهور',
            ),
          ],
        ),
      ),
    );
  }
}
