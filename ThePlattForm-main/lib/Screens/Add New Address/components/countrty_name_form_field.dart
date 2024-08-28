
import 'package:flutter/material.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CountryNameFormField extends StatefulWidget {
  const CountryNameFormField({super.key});

  @override
  _CountryNameFormFieldState createState() =>
      _CountryNameFormFieldState();
}

class _CountryNameFormFieldState extends State<CountryNameFormField> {
  String? selectedCountry;
  final List<String> countries = [
    'الرياض',
    'حائل',
    'تبوك',
    'جدة',
    'العسير',
    'الخبر',
    'مكة المكرمة',
    'المدينة المنورة',
    'جازان',
    'الاحساء',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            
            labelText: 'مدينة الإقامة',
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
