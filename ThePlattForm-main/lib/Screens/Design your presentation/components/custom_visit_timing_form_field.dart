

import 'package:flutter/material.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomVisitTimingFormField extends StatefulWidget {
  const CustomVisitTimingFormField({super.key});

  @override
  _CustomVisitTimingFormFieldState createState() =>
      _CustomVisitTimingFormFieldState();
}

class _CustomVisitTimingFormFieldState extends State<CustomVisitTimingFormField> {
  String? selectedCountry;
  final List<String> countries = [
    'من 8 ص الى 10 ص',
    'من 10 ص الى 12 ص',
    'من 12 ص الى 2 م',
    ' من 2 م الى 4 م',
    'من 4 م الى 6 م',

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            
            labelText: 'توقيت الزيارة',
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
