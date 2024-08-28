

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomDateOfFirstVisitFormField extends StatefulWidget {
  const CustomDateOfFirstVisitFormField({super.key});

  @override
  _CustomDateOfFirstVisitFormFieldState createState() => _CustomDateOfFirstVisitFormFieldState();
}

class _CustomDateOfFirstVisitFormFieldState extends State<CustomDateOfFirstVisitFormField> {
  final TextEditingController _dateController = TextEditingController();
  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
        _dateController.text = DateFormat('yyyy-MM-dd').format(_selectedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: _dateController,
          readOnly: true,
          decoration: InputDecoration(
            labelText: 'تاريخ اول زياره',
            labelStyle: TextStyles.regular14, 
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(4),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            suffixIcon: IconButton(
              icon: const Icon(Icons.calendar_today),
              onPressed: () => _selectDate(context),
            ),
          ),
        ),
       
      ],
    );
  }
}
