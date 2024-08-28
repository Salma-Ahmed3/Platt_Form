
import 'package:flutter/material.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomContractDurationFormField extends StatefulWidget {
  const CustomContractDurationFormField({super.key});

  @override
  _CustomContractDurationFormFieldState createState() =>
      _CustomContractDurationFormFieldState();
}

class _CustomContractDurationFormFieldState extends State<CustomContractDurationFormField> {
  String? selectedCountry;
  final List<String> countries = [
    '1شهر',
    '2شهر',
    '3شهور',
    '6شهور',
    'سنه',

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            
            labelText: 'مدة التعاقد',
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
