import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomTextAccount extends StatelessWidget {
  const CustomTextAccount(
      {super.key,
      required this.titleHaveAccountOrNot,
      required this.titleNewAccount,
      required this.onTap});
  final String titleHaveAccountOrNot, titleNewAccount;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          TextSpan(
            text: titleHaveAccountOrNot,
            style: TextStyles.regular18.copyWith(
              color: const Color(0xff949D9E),
            ),
          ),
          TextSpan(
            text: titleNewAccount,
            style: TextStyles.regular18.copyWith(
              color: Colors.green,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
            // Navigator.pushNamed(context, SignUpView.routeName);
          ),
        ],
      ),
    );
  }
}
