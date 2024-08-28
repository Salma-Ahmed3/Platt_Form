
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Hourly%20Service/components/custom_detailes_in_choose_packege_hourly_item.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Hourly%20Service/components/dialoge_chosse_package.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Individual%20Service/components/custom_salary.dart';
import 'package:nowproject/utility/app_text_style.dart';


class CustomDetailesInChoosePackegeHourlyServices extends StatefulWidget {
  const CustomDetailesInChoosePackegeHourlyServices({super.key, });

  @override
  State<CustomDetailesInChoosePackegeHourlyServices> createState() => _CustomDetailesInChoosePackegeHourlyServicesState();
}

class _CustomDetailesInChoosePackegeHourlyServicesState extends State<CustomDetailesInChoosePackegeHourlyServices> {
 bool isRectangleVisible = false;

  void toggleRectangleVisibility() {
    setState(() {
      isRectangleVisible = !isRectangleVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 384.w,
          height: 90,
          decoration: BoxDecoration(
            color: const Color(0xffD6D6D6),
            borderRadius: isRectangleVisible
                ? const BorderRadius.only(
                    topLeft: Radius.circular(14),
                    topRight: Radius.circular(14),
                  )
                : BorderRadius.circular(14),
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                    'باقة زيارة واحدة أسبوعيا لمدة 3 شهور',
                      style: TextStyles.bold14,
                    ),
                    SizedBox(height: 5,),
                    const CustomSalary(),
                  ],
                ),
                CircleAvatar(
                  radius: 20.r,
                  backgroundColor: Colors.transparent,
                  child: IconButton(
                    onPressed: toggleRectangleVisibility,
                    icon: Icon(
                      isRectangleVisible ? Icons.remove : Icons.add,
                      color: Colors.black,
                    ),
                    
                  ),
                ),
              ],
            ),
          ),
        ),
        if (isRectangleVisible)
          GestureDetector(
            onTap: (){
              showDialog(
              context: context,
              builder: (BuildContext context) {
                return const DialogeChossePackage();
              },
            );
            },
            child: Container(
              width: 700.w,
              height: 260.h,
              decoration: BoxDecoration(
                color: const Color(0xffF8F8F8),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(14),
                  bottomRight: Radius.circular(14),
                ),
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: const CustomDetailesInChoosePackegeHorlyItem(),
            ),
          ),
      ],
    );
  }
}
