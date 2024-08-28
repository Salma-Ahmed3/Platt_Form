import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Hourly%20Service/components/choose_button_nationalty_in_choose_package.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Hourly%20Service/components/custom_button_package_duration_item.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Hourly%20Service/components/custom_button_periods_in_chosse_package.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Hourly%20Service/components/custom_detailes_in_choose_packege_hourly_services.dart';
import 'package:nowproject/utility/app_text_style.dart';

class ChoosePackageHourlyServicesViewBody extends StatelessWidget {
  const ChoosePackageHourlyServicesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 17,),
            Text('الجنسيه'  , style: TextStyles.regular12,),
            const SizedBox(height: 12,),
                    const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: CustomButtonNationaltyInChoossePackage()),
            const SizedBox(height: 12,),
            Text('الفترة'  , style: TextStyles.regular12,),
            const SizedBox(height: 14,),
            const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
              child:  CustomButtonPeriodsInChoosePackage(text1: 'صباحي', text2: 'مسائي', width: 180, height: 38,),
              ),
            const SizedBox(height: 15,),
            Text('مواعيد التوصيل'  , style: TextStyles.regular12,),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                      Expanded(
                        child: Text(
                          'الفترة الصباحية:من 8 ص الى 5 م',
                          style: TextStyles.regular12,
                          textAlign: TextAlign.start, 
                        ),
                      ),
                      const SizedBox(width: 5,),
                      Expanded(
                              child: Text(
                                'الفترة المسائية:من 5 م الى 9 م',
                                style: TextStyles.regular12,
                                textAlign: TextAlign.end, 
                              ),
                            ),
                          ],
                        ),
                          const SizedBox(height: 20,),
                          Text('عدد الساعات'  , style: TextStyles.regular12,),
                          const SizedBox(height: 12,),
                        const CustomButtonPeriodsInChoosePackage(text1: '4 ساعة ', text2: '8 ساعة', width: 117, height: 35,),
                          const SizedBox(height: 12,),
                          Text('توقيت الزياره'  , style: TextStyles.regular12,),
                          const SizedBox(height: 12,),
                                const CustomButtonPeriodsInChoosePackage(text1: 'من 8 ص الى 10 ص', text2: 'من 10صالى 12 ص', width: 117, height: 35,),
                          const SizedBox(height: 20,),
                          Text('مدة الباقه'  , style: TextStyles.regular12,),
                          const SizedBox(height: 12,),
                            const SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: CustomButtonPackageDurationItem()
                          ),
                            const SizedBox(height: 17,),
                          const CustomDetailesInChoosePackegeHourlyServices(),
                            const SizedBox(height: 17,),
                          const CustomDetailesInChoosePackegeHourlyServices(),
                            const SizedBox(height: 17,),
                          const CustomDetailesInChoosePackegeHourlyServices(),
                            const SizedBox(height: 17,),
                          const CustomDetailesInChoosePackegeHourlyServices(),
                            const SizedBox(height: 17,),
                          const CustomDetailesInChoosePackegeHourlyServices(),
                          
                    ],
                ),
      ),
            );
  }
}

