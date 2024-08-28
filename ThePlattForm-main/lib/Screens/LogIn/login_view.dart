import 'package:flutter/material.dart';
import 'package:nowproject/Screens/LogIn/components/login_view_body.dart';
import 'package:nowproject/utility/app_text_style.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = 'LoginView';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
      appBar: AppBar(
      backgroundColor: const Color(0xffF8F8F8),
      centerTitle: true,
      title:  Text(
        'تسجيل الدخول',
        style: TextStyles.semiBold18,
        textAlign: TextAlign.center,
      ),
      elevation: 0,),
      body: const LoginViewBody(),
      ),
      
    );
  }
}