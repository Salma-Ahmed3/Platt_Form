import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Contract%20Data/contract_data_view.dart';
import 'package:nowproject/Screens/Design%20your%20presentation/components/custom_chosse_period_form_field.dart';
import 'package:nowproject/Screens/Design%20your%20presentation/components/custom_contract_duration_form_field.dart';
import 'package:nowproject/Screens/Design%20your%20presentation/components/custom_date_of_first_visit_form_field.dart';
import 'package:nowproject/Screens/Design%20your%20presentation/components/custom_delivery_times.dart';
import 'package:nowproject/Screens/Design%20your%20presentation/components/custom_nationalty_form_field.dart';
import 'package:nowproject/Screens/Design%20your%20presentation/components/custom_number_of_visit_form_field.dart';
import 'package:nowproject/Screens/Design%20your%20presentation/components/custom_visit_timing_form_field.dart';
import 'package:nowproject/utility/app_text_style.dart';
import '../../../components/custom_button/custom_button_in_add_new_addrease.dart';
import 'custom_number_of_female_worker_form_field.dart';

class DesignYourPresentationViewBody extends StatelessWidget {
  const DesignYourPresentationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(height: 27,),
          const CustomNationaltyFormField(),
          const SizedBox(height: 25,),
          const CustomNumberOfFemaleWorkersFormField(),
          const SizedBox(height: 25,),
          const CustomContractDurationFormField(),
          const SizedBox(height: 22,),
          const CustomChoosePeriodFormField(),
          const SizedBox(height: 16,),
          const CustomDeliveryTimes(),
          const SizedBox(height: 25,),
          const CustomVisitTimingFormField(),
          const SizedBox(height: 25,),
          const CustomNumberOfVisitFormField(),
          const SizedBox(height: 25,),
          const CustomDateOfFirstVisitFormField(),
          const SizedBox(height: 32,),
          CustomButtonInAddNewAddrease(  onTap: () {
                    Navigator.of(context).pushNamed(ContractDataView.routeName);
                  }, 
                      alignment:   Alignment.centerLeft, 
                      colorBackGround: Colors.black,
                      tixtInButton: Center(
                      child: Text('التالي',
                      style: TextStyles.regular18.copyWith(color: Colors.white),
                      ),
                  ),
                      width: 108.w, height: 47.h, 
                      colorBorder:  const Color(0xff000000), borderRadius:  BorderRadius.circular(8) ,
                        ),
          const SizedBox(height: 32,),
          ],
        )
      ),
    );
  }
}

