import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Home/components/custom_text_in_photo.dart';

class CustomPhoto extends StatelessWidget {
  const CustomPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
            child: Stack(
              children: [ Container(
                  width: 365.w,
                  height: 189.h,
                  decoration: BoxDecoration(
                    color: const Color(0xffD6D6D6),
                    borderRadius: BorderRadius.circular(14), // Adjust the value as needed
                  ),
                ),
                const CustomTextInPhoto()
              ],
            ),
          );
  }
}
