import 'package:flutter/material.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomButtonInRequestBusiness extends StatelessWidget {
  const CustomButtonInRequestBusiness({super.key, required this.labelText, required this.hintText, this.maxLines});
final String labelText , hintText ;
final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
        style: TextStyles.regular12,
        maxLines: maxLines,
          decoration:  InputDecoration(
            enabledBorder:  const OutlineInputBorder(
              borderSide:   BorderSide(
                color:  Colors.black,
              ),
            ),
            focusedBorder:  const OutlineInputBorder(
              borderSide:   BorderSide(
                color:  Colors.black,
              ),
            ),
            border:  OutlineInputBorder(
              borderRadius:  BorderRadius.circular(2),
            ),
            labelText: labelText ,labelStyle: TextStyles.regular14,
            hintText: hintText ,hintStyle: TextStyles.regular12,
          ),
        )
      ],
    );
  }
}