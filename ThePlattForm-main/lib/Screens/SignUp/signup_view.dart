import 'package:flutter/material.dart';
import 'package:nowproject/Screens/SignUp/components/signup_view_body.dart';
import 'package:nowproject/utility/app_text_style.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const routeName = 'SignUp';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF8F8F8),
        centerTitle: true,
        title:  Text(
          'إنشاء حساب جديد',
          style: TextStyles.semiBold18,
          textAlign: TextAlign.center,
        ),
        elevation: 0,),
      
        body: const SignUpViewBody(),
      ),
    );
  }
}