import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Individual%20Service/components/custom_button_nationality.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Individual%20Service/components/custom_detailes_in_choose_packege.dart';
import 'custom_button_copon.dart';

class ChoosePackageViewBody extends StatelessWidget {
  const ChoosePackageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 18.h,),
          const CustomButtonNationality(),
          SizedBox(height: 24.h,),
          const CustomButtonCopon(),
          SizedBox(height: 15.h,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: CustomDetailesInChoosePackege(workerData: 'سائق خاص- باكستان - شهر',
              heightContainer: 128.h, textPackageDuration: 'مدة الباقة 1 شهر',
              
              ),
           ),
          SizedBox(height: 16.h,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: CustomDetailesInChoosePackege(workerData: 'باقة كينيا ثلاثة أشهر اقساط دفعة أولى 1000 و قسط شهري 3620 ريال', 
             heightContainer: 150.h, textPackageDuration: 'مدة الباقه شهر',),
           ),
             SizedBox(height: 16.h,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: CustomDetailesInChoosePackege(workerData: 'سائق خاص- باكستان - شهر',
              heightContainer: 128.h, textPackageDuration: 'سعر الزيارة 2500 ر.س',),
           ),
              SizedBox(height: 15.h,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: CustomDetailesInChoosePackege(workerData: 'سائق خاص- باكستان - شهر',
              heightContainer: 128.h, textPackageDuration: 'سعر الزيارة 2500 ر.س',),
           ),
              SizedBox(height: 15.h,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: CustomDetailesInChoosePackege(workerData: 'باقة زيارة واحدة أسبوعياً لمدة 3 شهور',
              heightContainer: 128.h, textPackageDuration: 'سعر الزيارة 2500 ر.س',),
           ),
        ],
      ),
    );
  }
}

