import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/utility/app_images.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.titleText});
  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 13),
      child: Row(
        children: [
          Image.asset(Assets.imagesPicIcon),
          SizedBox(width: 10.w),
          Expanded(
            child: Text(
              titleText,
              style: TextStyles.bold14,
            ),
          ),
          const Icon(Icons.file_upload_outlined, size: 35),
        ],
      ),
    );
  }
}
