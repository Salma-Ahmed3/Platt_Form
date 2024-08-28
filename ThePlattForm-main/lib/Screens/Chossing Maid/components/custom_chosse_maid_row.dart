import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Chossing%20Maid/components/advanced_search_dialoge.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomChosseMaidRow extends StatelessWidget {
  const CustomChosseMaidRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
          Text('اختر العاملة التي تناسبك' , style: TextStyles.semiBold16,), 
          Container(
            width: 92.w,
            height: 40.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:  Colors.black,
            ),
            child: GestureDetector(
              onTap: () {
                showDialog(context: context, builder: (BuildContext context) {
                  return const AdvancedSearchDialog();
                });
              },
              child: Align(
                alignment: Alignment.center,
                child: Text('بحث متقدم' ,
                style: TextStyles.regular12.copyWith(color: Colors.white),
                  ),
                ),
            ),
          )
      ],
    );
  }
}
