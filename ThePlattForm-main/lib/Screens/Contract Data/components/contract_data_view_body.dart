import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Individual%20Service/components/custom_button_copon.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Individual%20Service/components/custom_detailes_in_choose_packege.dart';
import 'package:nowproject/Screens/Contract%20Data/components/custom_click_in_contract_data.dart';
import 'package:nowproject/Screens/Contract%20Data/components/custom_favorite_date.dart';
import 'package:nowproject/utility/app_text_style.dart';

class ContractDataViewBody extends StatelessWidget {
  const ContractDataViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 27,),
          const CustomButtonCopon(),
          const SizedBox(height: 19,),
          const CustomFavorteDate(),
          const SizedBox(height: 23,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomDetailesInChoosePackege(workerData: 'باقة زيارة واحدة أسبوعيا لمدة 3 شهور',
                heightContainer: 128.h, textPackageDuration: 'سعر الزيارة 240 ر .س',
                ),
          ),
          const SizedBox(height: 16,),
          Text('بإكمالك الخطوات فأنت توافق على', style: TextStyles.regular14,),
          const SizedBox(height: 5,),
          Text('شروط و أحكام الشركة', style: TextStyles.regular14.copyWith(color: Color(0xff24A19D)),),
          const SizedBox(height: 37,),
          const CustomClickInContractData(),
        ],
      ),
          
    );
  }
}
