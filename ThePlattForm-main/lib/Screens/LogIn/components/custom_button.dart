import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomButtonLogin extends StatelessWidget {
  const CustomButtonLogin({super.key, required this.onPressed, required this.text});

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 54.h,
          child: GestureDetector(
            onTap: onPressed,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff38C473),
                    Color(0xff2E8B57), 
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 8.0,
                    offset: const Offset(7, 7),
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Text(
                text,
                style: TextStyles.regular18.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
