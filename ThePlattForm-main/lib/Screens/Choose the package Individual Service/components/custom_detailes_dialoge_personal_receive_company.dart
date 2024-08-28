import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Contract%20Details/contract_details_view.dart';

import '../../../utility/app_text_style.dart';

class CustomDetailesDialogePersonalReceiveCompany extends StatelessWidget {
  const CustomDetailesDialogePersonalReceiveCompany({super.key,  this.sizedBox});
final SizedBox? sizedBox;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Column(
        children: [
          SizedBox(height: sizedBox?.height,),
          Text('اختر الفرع' , style: TextStyles.semiBold18,),
          SizedBox(height: 10.h,),
          Container(
                      width: 292.w,
                      height: 34.h,
                      decoration: BoxDecoration(
                        color: Color(0xffEFEFEF),
                        borderRadius: BorderRadius.circular(10),                     
                      ),
                      child:Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 19),
                          child: Text('سكن الرياض نسائي' , style: TextStyles.semiBold14,),
                        )),
                    ),
                    SizedBox(height: 6.h,),
                    
                      Container(
                      width: 292.w,
                      height: 34.h,
                      decoration: BoxDecoration(
                        color: Color(0xffEFEFEF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 19),
                          child: Text('سكن الرياض نسائي' , style: TextStyles.semiBold14,),
                        )),
                    ),
                    SizedBox(height: 11.h,),

                  Center(
              child: Container(
                width:108,
                height: 47,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: GestureDetector(
                  onTap: () {
                   Navigator.of(context).pushNamed(ContractDetailsView.routeName);
                  },
                  child: Center(child: Text('التالي',
                  style: TextStyles.regular18.copyWith(color: Colors.white),
                      ),
                    ),
                ),
                ),
                
          ),
                    SizedBox(height: 18.h,),

        ],
      ),
    );
  }
}