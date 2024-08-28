import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomContainerInMyRequest extends StatelessWidget {
  const CustomContainerInMyRequest({
    super.key,
    required this.nameMyRequest,
    this.onTap,
    required this.isSelected, required this.color, required this.colorText,
  });

  final String nameMyRequest;
  final void Function()? onTap;
  final bool isSelected;
final Color color;
final Color colorText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 106,
        height: 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: color
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            nameMyRequest,
            style: TextStyles.regular12.copyWith(
              color: colorText,
            ),
          ),
        ),
      ),
    );
  }
}
