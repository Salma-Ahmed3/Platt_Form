import 'package:flutter/material.dart';
import 'package:nowproject/utility/app_text_style.dart';
import 'package:svg_flutter/svg.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton(
      {super.key,
      required this.title,
      required this.images,
      required this.onPressed});
  final String title;
  final String images;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          minimumSize: const Size(340, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(
              width: 1,
            ),
          ),
        ),
        onPressed: onPressed,
        child: ListTile(
          visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
          ),
          leading:SvgPicture.asset(images),
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyles.regular16.copyWith(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
