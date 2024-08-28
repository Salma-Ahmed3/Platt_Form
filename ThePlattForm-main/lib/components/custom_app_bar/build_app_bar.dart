import 'package:flutter/material.dart';
import 'package:nowproject/utility/app_text_style.dart';

AppBar buildAppBar(
  context, {
  required String titleAppBar,
  required void Function() onPressedRightIcon, 
 required Widget icon,
  
}) {
  return AppBar(
    
    backgroundColor: const Color(0xffF8F8F8),
    centerTitle: true,
          title:  Text(titleAppBar,style:TextStyles.semiBold18,),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: IconButton(
                icon:icon,
                onPressed:
                onPressedRightIcon,
                
              ),
            ),
          ],
        
    
  );
}
