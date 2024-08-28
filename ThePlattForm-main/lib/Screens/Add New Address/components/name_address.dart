
import 'package:flutter/material.dart';
import 'package:nowproject/utility/app_text_style.dart';

class NameAddressFormField extends StatefulWidget {
  const NameAddressFormField({super.key});

  @override
  _NameAddressFormFieldState createState() =>
      _NameAddressFormFieldState();
}

class _NameAddressFormFieldState extends State<NameAddressFormField> {
  String? selectedAddress;
  final List<String> countries = [
    'العليا',
    'حي الورود',
    'حي السليمانيه',
    'الملز',
    'حي الصحافة',
    'حي الياسمين ',
    ' حي النرجس ',
    ' حي الملك سلمان ',
  
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            
            labelText: 'اسم الحي',
            labelStyle: TextStyles.regular14,
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(4),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color:  Colors.black,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          value: selectedAddress,
          icon: const Icon(Icons.arrow_drop_down),
          iconSize: 40,
          items: countries.map((String country) {
            return DropdownMenuItem<String>(
              value: country,
              child: Text(
                country,
                style: TextStyles.regular12,
              ),
            );
          }).toList(),
          onChanged: (newValue) {
            setState(() {
              selectedAddress = newValue;
            });
          },
        ),
      ],
    );
  }
}
