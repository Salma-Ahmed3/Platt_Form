import 'package:flutter/material.dart';
import 'package:nowproject/utility/app_images.dart';
import 'package:svg_flutter/svg.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.isChecked,
    required this.onChecked,
  });

  final bool isChecked;
  final ValueChanged<bool> onChecked;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChecked(!isChecked);
      },
      child: AnimatedContainer(
        width: 24,
        height: 24,
        duration: const Duration(milliseconds: 100),
        decoration: BoxDecoration(
          color: Colors.white, // White circle background
          shape: BoxShape.circle,
          border: Border.all(
            width: 1.5,
            color: isChecked ? Colors.black : Color(0xffACACAC),
          ),
        ),
        child: isChecked
            ? Padding(
                padding: const EdgeInsets.all(2),
                child: SvgPicture.asset(
                  Assets.imagesCheckBox,
                  // ignore: deprecated_member_use
                  color: Colors.black, // Black checkmark
                ),
              )
            : const SizedBox(),
      ),
    );
  }
}
