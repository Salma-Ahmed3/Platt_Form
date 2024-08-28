import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Contract%20Data/components/rectangle_show_visits.dart';
import 'package:nowproject/Screens/Contract%20Data/components/rectangle_show_visits_not_avaliable.dart';
import 'package:nowproject/Screens/Contract%20Data/components/rectanglr_show_visits_gift.dart';
import 'package:nowproject/components/custom_circle_exit/custom_circle_avatar_dialog.dart';
import 'package:nowproject/utility/app_text_style.dart';

import '../../../components/custom_button/custom_button_in_add_new_addrease.dart';

class DialogeShowVisits extends StatelessWidget {
  const DialogeShowVisits({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: Dialog(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 50),
                Text('الزيارات المتوقعة', style: TextStyles.semiBold18),
                const SizedBox(height: 20),
                const RectangleShowVisits(text: 'الأحد, ‏26 أغسطس 2023',),
                const SizedBox(height: 4),
                const RectangleShowVisits(text: 'الأربعاء, 29 أغسطس 2023',),
                const SizedBox(height: 4),
                const RectangleShowVisits(text: 'الأحد, 01 سبتمبر 2023',),
                const SizedBox(height: 4),
                const RectangleShowVisitsNotAvaliable(text: 'السبت, 23 سبتمبر', textNotAvailable: 'الخدمة غير متاحة بسبب أجازة\n اليوم الوطني السعودي',),
                const SizedBox(height: 4),
                const RectangleShowVisits(text:'الخميس, 28 سبتمبر',),
                const SizedBox(height: 4),
                const RectangleShowVisitsGift(text: 'السبت, 23 سبتمبر', textGift: 'زيارة هدية مجانية',),
                const SizedBox(height: 22),
                    CustomButtonInAddNewAddrease(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          alignment: Alignment.centerRight, 
                          colorBackGround: Colors.black, 
                          tixtInButton:  Center(
                          child: Text('اغلاق',
                          style: TextStyles.regular18.copyWith(color:  Colors.white),
                          ),
                          ), width: 108,
                          height: 47, colorBorder:  const Color(0xff000000), borderRadius: BorderRadius.circular(8),
                        ),
                const SizedBox(height: 31),
                  ]
              )
          )
            ),
              const Positioned(
                                  top: 172,
                                  child: CustomCircleAvatar(),
                                ),
        ]
        );
  }
}

