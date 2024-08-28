import 'package:flutter/material.dart';
import 'package:nowproject/Screens/My%20Request%20Business/my_request_buiness_view.dart';
import 'package:nowproject/Screens/My%20Request%20Hours/my_request_hourly_view.dart';
import 'package:nowproject/Screens/My%20Requests/my_requests_view.dart';
import 'package:nowproject/Screens/My%20Requests/components/custom_container_in_my_request.dart';
import 'package:nowproject/Screens/My%20Requests/components/custom_rectangle_in_my_request.dart';

class MyRequestsViewBody extends StatefulWidget {
  const MyRequestsViewBody({super.key});

  @override
  _MyRequestsViewBodyState createState() => _MyRequestsViewBodyState();
}

class _MyRequestsViewBodyState extends State<MyRequestsViewBody> {
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
                  onTap: () {
                    _onRequestSelected('الأفراد');
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) {
                  return const MyRequestsView();
                } ));
                  },
                  color: selectedRequest == 'الأفراد' ?  const Color(0xffD6D6D6) :Colors.black ,
                    colorText: selectedRequest == 'الأفراد' ? Colors.black : Colors.white,
                  
                  nameMyRequest: 'الأفراد',
                  isSelected: selectedRequest == 'الأفراد',
                  
                ),
                const SizedBox(width: 10),
                CustomContainerInMyRequest(
                  color: selectedRequest == 'الساعات' ? Colors.black :Color(0xffD6D6D6) ,
                    colorText: selectedRequest == 'الساعات' ? Colors.white : Colors.black,

                  nameMyRequest: 'الساعات',
                  isSelected: selectedRequest == 'الساعات',
                  onTap: () {
                    _onRequestSelected('الساعات');
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) {
                  return const MyRequestHourlyView();
                }
                ));
                  },
                ),
                const SizedBox(width: 10),
                CustomContainerInMyRequest(
                  color: selectedRequest == 'الأعمال' ? Colors.black : const Color(0xffD6D6D6),
                    colorText: selectedRequest == 'الأعمال' ? Colors.white : Colors.black,

                  nameMyRequest: 'الأعمال',
                  isSelected: selectedRequest == 'الأعمال',
                onTap: () {
                    _onRequestSelected('الأعمال');
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) {
                  return const MyRequestBuinessView();
                } ));
                  },
                ),
              ],
            ),
            const SizedBox(height: 23),
            const CustomRectangleInMyRequest(heightContainer: 53, isLatest: true,
            titleName: 'Lead-INDV-NO9822',
            firstText: 'صاحب الطلب : Ahmed Abo Alfadl',
            secoundText: 'تاريخ الطلب : 12-12-2022',
            thirdText: 'الجنسية : بنجلاديش',
            fourText: 'المهنة المطلوبة : عاملة منزلية',
            fiveText: 'تفاصيل الطلب',
            finalText:'طلب اختيار افراد من التطبيق', 
              ),
            const SizedBox(height: 17),
            
            const CustomRectangleInMyRequest(heightContainer: 53, isLatest: false,
            titleName: 'Lead-INDV-NO9822',
            firstText: 'صاحب الطلب : Ahmed Abo Alfadl',
            secoundText: 'تاريخ الطلب : 12-12-2022',
            thirdText: 'الجنسية : بنجلاديش',
            fourText: 'المهنة المطلوبة : عاملة منزلية',
            fiveText: 'تفاصيل الطلب',
            finalText:'طلب اختيار افراد من التطبيق', 
              ),
            const SizedBox(height: 17),
            
            const CustomRectangleInMyRequest(heightContainer: 53, isLatest: false,
            titleName: 'Lead-INDV-NO9822',
            firstText: 'صاحب الطلب : Ahmed Abo Alfadl',
            secoundText: 'تاريخ الطلب : 12-12-2022',
            thirdText: 'الجنسية : بنجلاديش',
            fourText: 'المهنة المطلوبة : عاملة منزلية',
            fiveText: 'تفاصيل الطلب',
            finalText:'طلب اختيار افراد من التطبيق', 
              ),
            const SizedBox(height: 17),
            
          ],
        ),
      ),
    );
  }
}
