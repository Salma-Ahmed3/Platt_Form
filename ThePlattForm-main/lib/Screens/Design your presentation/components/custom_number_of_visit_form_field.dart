
import 'package:flutter/material.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomNumberOfVisitFormField extends StatefulWidget {
  const CustomNumberOfVisitFormField({super.key});

  @override
  _CustomNumberOfVisitFormFieldState createState() =>
      _CustomNumberOfVisitFormFieldState();
}

class _CustomNumberOfVisitFormFieldState extends State<CustomNumberOfVisitFormField> {
  String? selectedCountry;
  final List<String> countries = [

    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
 

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            
            labelText: 'عدد الزيارات',
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
