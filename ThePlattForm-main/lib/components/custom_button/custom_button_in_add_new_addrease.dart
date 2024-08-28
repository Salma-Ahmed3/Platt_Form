import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonInAddNewAddrease extends StatelessWidget {
  const CustomButtonInAddNewAddrease({
    super.key,
     this.onTap,
      required this.alignment, 
      required this.colorBackGround, 
      required this.tixtInButton, required this.width, required this.height, required this.colorBorder,  this.borderRadius});
final void Function()? onTap;
final AlignmentGeometry alignment;
final Color colorBackGround;
final Color colorBorder;
final Widget tixtInButton;
final double width;
final double height;
final BorderRadiusGeometry? borderRadius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
                    width: width,
                    height: height,
                    decoration: BoxDecoration(
                      color: colorBackGround,
                      borderRadius:borderRadius,
                      border: Border.all(
                        color:colorBorder,
                        width: 1.w,
                      ),
                    ),
                    child:tixtInButton,
                  ),
                );
   
  }
}