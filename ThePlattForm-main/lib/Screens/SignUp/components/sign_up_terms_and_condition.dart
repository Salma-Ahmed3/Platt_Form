import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utility/app_text_style.dart';
import '../../../components/custom_check_box/custom_check_box.dart';

class SignUpTermsAndCondition extends StatefulWidget {
  const SignUpTermsAndCondition({super.key, required this.onChanged});

  final ValueChanged<bool> onChanged;

  @override
  State<SignUpTermsAndCondition> createState() =>
      _SignUpTermsAndConditionState();
}

class _SignUpTermsAndConditionState extends State<SignUpTermsAndCondition> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          onChecked: (value) {
            isTermsAccepted = value;
            widget.onChanged(value);
            setState(() {});
          },
          isChecked: isTermsAccepted,
        ),
         SizedBox(
          width: 16.w,
        ),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                  style: TextStyles.regular16.copyWith(
                    color: const Color(0xFF949D9E),
                  ),
                ),
                TextSpan(
                  text: 'الشروط والأحكام',
                  style: TextStyles.regular16.copyWith(
                    color: Colors.green
                  ),
                ),
                TextSpan(
                  text: ' ',
                  style: TextStyles.regular16.copyWith(
                    color: const Color(0xFF616A6B),
                  ),
                ),
                TextSpan(
                  text: 'الخاصة',
                  style: TextStyles.regular16.copyWith(
                    color:Colors.green
                  ),
                ),
                TextSpan(
                  text: ' ',
                  style: TextStyles.regular16.copyWith(
                    color: const Color(0xFF616A6B),
                  ),
                ),
                TextSpan(
                  text: 'بنا',
                  style: TextStyles.regular16.copyWith(
                    color:Colors.green
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}
