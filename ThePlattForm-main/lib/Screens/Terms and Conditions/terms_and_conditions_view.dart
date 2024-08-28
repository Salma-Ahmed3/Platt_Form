import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/components/custom_button/custom_button_in_add_new_addrease.dart';
import 'package:nowproject/Screens/Contract/components/custom_text_contract.dart';
import 'package:nowproject/utility/app_text_style.dart';

class TermsAndConditionsView extends StatelessWidget {
  const TermsAndConditionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
         width: 0.8 * MediaQuery.of(context).size.width,
        child: Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 24),
                Text(
                  'شروط وأحكام الشركة',
                  style: TextStyles.semiBold18,
                ),
                const SizedBox(height: 12),
                const Expanded(
                  child: SingleChildScrollView(
                    child: CustomTextContract(),
                    
                  ),
                ),
                SizedBox(height: 20,),
                CustomButtonInAddNewAddrease(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  alignment: Alignment.center,
                  colorBackGround: Colors.black,
                  tixtInButton: Center(
                    child: Text(
                      'موافق',
                      style: TextStyles.regular14.copyWith(color: Colors.white),
                    ),
                  ),
                  width: 108.w,
                  height: 40.h,
                  colorBorder: const Color(0xff000000),
                  borderRadius: BorderRadius.circular(8),
                ),
                const SizedBox(height: 15),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
