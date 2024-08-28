
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomContainerNationality extends StatelessWidget {
  const CustomContainerNationality({super.key, required this.titleText, required this.widthContainer, required this.height});
final String titleText;
final double widthContainer;
final double height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21),
      child: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: double.infinity,
              height:height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: const Color(0xff000000),
                  width: 1.w,
                ),
              ),
            ),
            Positioned(
              top: -10,  
              right: 14,
              child: Container(
                width: widthContainer,
                height: 18.h,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    titleText,
                    style: TextStyles.regular14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
