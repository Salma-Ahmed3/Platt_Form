
import 'package:flutter/material.dart';
import 'package:nowproject/utility/app_text_style.dart';

class HouseType extends StatefulWidget {
  const HouseType({super.key});

  @override
  _HouseTypeState createState() =>
      _HouseTypeState();
}

class _HouseTypeState extends State<HouseType> {
  String? selectedAddress;
  final List<String> countries = [
    'عمارة',
    'مكتب',
    'شركة',
    'فيلا',

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            
            labelText: 'نوع المنزل',
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
