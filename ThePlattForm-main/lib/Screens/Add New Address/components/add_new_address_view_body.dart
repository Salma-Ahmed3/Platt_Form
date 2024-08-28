import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Add%20New%20Address/components/custom_button_in_add_new_adrease_item.dart';
import 'package:nowproject/Screens/Add%20New%20Address/components/house_type.dart';
import 'package:nowproject/Screens/Add%20New%20Address/components/name_address.dart';
import 'package:nowproject/Screens/Add%20New%20Address/components/name_place_near.dart';
import 'package:nowproject/Screens/Add%20New%20Address/components/phone_number.dart';
import 'countrty_name_form_field.dart';

class AddNewAddressViewBody extends StatelessWidget {
  const AddNewAddressViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   SingleChildScrollView(
      child:  Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
                  SizedBox(height: 41.h,),
                  const CountryNameFormField(),
                  SizedBox(height: 16.h,),
                  const NameAddressFormField(),
                  SizedBox(height: 16.h,),
                  const HouseType(),
                  SizedBox(height: 16.h,),
                  const PhoneNumber(),
                  SizedBox(height: 16.h,),
                  const NamePlaceNear(),
                  SizedBox(height: 16.h,),
                  const CustomButtonInAddNewAddreaseItem()
                
                ],
        ),
      ),
    );
  }
}
