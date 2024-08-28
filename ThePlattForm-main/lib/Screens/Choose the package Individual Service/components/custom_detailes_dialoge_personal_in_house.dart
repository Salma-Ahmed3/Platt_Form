import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomDetailesDialogePersonalInHouse extends StatelessWidget {
  const CustomDetailesDialogePersonalInHouse({super.key, this.onTap});
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
                SizedBox(height: 27.h,),
                Text('مواعيد التوصيل', style: TextStyles.regular14, ), 
                SizedBox(height: 10.h,),
                Row(
              children: [
                Icon(Icons.error_outline , size: 15,),
                SizedBox(width: 5.w,),
                Text('الفترة الصباحية : من 7:30 ص الى 9:30 م', style: TextStyles.regular12, ),
            ],
          ),
                SizedBox(height: 5.h,),
                Row(
                children: [
                const Icon(Icons.error_outline , size: 15,),
                SizedBox(width: 5.w,),
                Text('الفترة المسائية : من 4:00 م الي 6:00 م', style: TextStyles.regular12, ),
            ],
          ),
                SizedBox(height: 29.h,),
            Center(
              child: Container(
                width:108,
                height: 47,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: GestureDetector(
                  onTap: onTap,
                  child: Center(child: Text('التالي',
                  style: TextStyles.regular18.copyWith(color: Colors.white),
                      ),
                    ),
                ),
                ),
           ),
        ],
      ),
    );
  }
}