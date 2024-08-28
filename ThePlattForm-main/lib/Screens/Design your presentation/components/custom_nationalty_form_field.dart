
import 'package:flutter/material.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomNationaltyFormField extends StatefulWidget {
  const CustomNationaltyFormField({super.key});

  @override
  _CustomNationaltyFormFieldState createState() =>
      _CustomNationaltyFormFieldState();
}

class _CustomNationaltyFormFieldState extends State<CustomNationaltyFormField> {
  String? selectedCountry;
  final List<String> countries = [
    'الفلبين',
    'بنجلاديش',
    'تايلاند',
    'الهند',
    'اندونيسيا',
    
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            
            labelText: 'الجنسيه',
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
          value: selectedCountry,
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
              selectedCountry = newValue;
            });
          },
        ),
      ],
    );
  }
}
