import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomDetailesInMyRequest extends StatelessWidget {
  const CustomDetailesInMyRequest({super.key, required this.showAllData, this.firstText, this.secoundText, this.thirdText, this.fourText, this.fiveText, this.finalText});
  final bool showAllData;
final String? firstText , secoundText , thirdText , fourText , fiveText , finalText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.h),
          Text(firstText??'', style: TextStyles.regular14),
          SizedBox(height: 5.h),
          Text(secoundText??'', style: TextStyles.regular14),
          if (showAllData) ...[
            SizedBox(height: 5.h),
            Text(thirdText??'', style: TextStyles.regular14),
            SizedBox(height: 5.h),
            Text(fourText??'', style: TextStyles.regular14),
            SizedBox(height: 13.h),
            Text(fiveText??'', style: TextStyles.regular14),
            SizedBox(height: 5.h),
            Text(finalText??'', style: TextStyles.regular14),
          ],
        ],
      ),
    );
  }
}
