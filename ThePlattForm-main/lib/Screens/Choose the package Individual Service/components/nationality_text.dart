import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/utility/app_text_style.dart';

class NationalityText extends StatefulWidget {
  const NationalityText({super.key, required this.nameNationality});
  final String nameNationality;

  @override
  _NationalityTextState createState() => _NationalityTextState();
}

class _NationalityTextState extends State<NationalityText> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        width: 100.w,
        height: 40.h,
        decoration: BoxDecoration(
          color: isSelected ? Colors.black : Color(0xffD6D6D6),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
          child: Text(
            widget.nameNationality,
            style: TextStyles.regular12.copyWith(
          color: isSelected ? Colors.white : Colors.black,

              ),
          ),
        ),
      ),
    );
  }
}
