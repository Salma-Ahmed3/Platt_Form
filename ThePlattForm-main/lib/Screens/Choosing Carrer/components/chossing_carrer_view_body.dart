import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Individual%20Service/choose_package_view.dart';
import 'package:nowproject/Screens/Choosing%20Carrer/components/button_in_resident_service_choosse_carrer.dart';
import 'package:nowproject/utility/app_text_style.dart';



class ChossingCarrerViewBody extends StatelessWidget {
  const ChossingCarrerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
             SizedBox(height: 34.h,),
            Text('اختر الخدمة المطلوبة', style: TextStyles.regular14),
             SizedBox(height: 15.h,), 
              Center(
                child: Container(
                width: 384.w,
                height: 252.h,
                decoration: BoxDecoration(
                  color: Color(0xffF8F8F8),
                  borderRadius: BorderRadius.circular(21),
                  border: Border.all(
                    color: const Color(0xffF8F8F8),
                  ),
                ),
                  child:
                  Padding(
                    padding:  const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                         SizedBox(height: 41.h,),
                        ButtonInResidentServiceChooseCareer(
                        onChanged: (bool value) { 
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ChoosePackageView()),
                        );
                        },
                        titletext: 'سائق خاص', 
                        subtext: 'تقدم الخدمة بعقود شهرية من شهر الي 24 شهر',
                        colorBackGroun: Colors.white,
                        colorBorder: const Color(0xffACACAC),
                        ),
                         SizedBox(height: 17.h,),
                        ButtonInResidentServiceChooseCareer(
                        onChanged: (bool value) { 
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ChoosePackageView()),
                        );
                        },
                        titletext: 'عاملة منزلية', 
                        subtext: 'تقدم الخدمة بعقود شهرية من شهر الي 24 شهر',
                        colorBackGroun: Colors.white,
                        colorBorder: const Color(0xffACACAC),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

