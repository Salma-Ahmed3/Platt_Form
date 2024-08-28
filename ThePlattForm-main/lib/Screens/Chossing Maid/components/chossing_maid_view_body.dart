import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Chossing%20Maid/components/custom_chosse_maid_row.dart';
import 'package:nowproject/Screens/Chossing%20Maid/components/custom_dialoge_maid.dart';
import 'package:nowproject/Screens/Chossing%20Maid/components/custom_maid_detailes.dart';


class ChoosingMaidViewBody extends StatelessWidget {
  const ChoosingMaidViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21),
        child: Column(
          children: [
            SizedBox(height: 21.h,),
              const CustomChosseMaidRow(),
            SizedBox(height: 35.h,),
             CustomMaidDetailes(
              onTap:  (){
                showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const CustomDialogeMaid();
                },
              );
              },
             ),
        SizedBox(height: 16.h,),
             CustomMaidDetailes(
              onTap:  (){
                showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const CustomDialogeMaid();
                },
              );
              },
             ),
        SizedBox(height: 16.h,),
      
             CustomMaidDetailes(
              onTap:  (){
                showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const CustomDialogeMaid();
                },
              );
              },
             ),
        SizedBox(height: 16.h,),
      
             CustomMaidDetailes(
              onTap:  (){
                showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const CustomDialogeMaid();
                },
              );
              },
             ),
        SizedBox(height: 16.h,),
      
          ],
        ),
      ),
    );
  }
}
