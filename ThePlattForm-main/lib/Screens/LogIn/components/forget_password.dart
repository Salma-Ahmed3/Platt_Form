import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Home/components/test_page.dart';
import 'package:nowproject/utility/app_text_style.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.text,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(TestPage.routeName);
            },
            child:  Text(
              'نسيت كلمة المرور؟',
              style: TextStyles.regular16
            ),
          ),
        ),
      ],
    );
  }
}
