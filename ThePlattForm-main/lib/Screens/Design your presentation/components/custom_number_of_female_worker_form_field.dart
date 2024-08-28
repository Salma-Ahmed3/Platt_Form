import 'package:flutter/material.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomNumberOfFemaleWorkersFormField extends StatefulWidget {
  const CustomNumberOfFemaleWorkersFormField({super.key});

  @override
  _CustomNumberOfFemaleWorkersFormFieldState createState() => _CustomNumberOfFemaleWorkersFormFieldState();
}

class _CustomNumberOfFemaleWorkersFormFieldState extends State<CustomNumberOfFemaleWorkersFormField> {
  int _numberOfFemaleWorkers = 0;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = _numberOfFemaleWorkers.toString();
  }

  void _increment() {
    setState(() {
      _numberOfFemaleWorkers++;
      _controller.text = _numberOfFemaleWorkers.toString();
    });
  }

  void _decrement() {
    if (_numberOfFemaleWorkers > 0) {
      setState(() {
        _numberOfFemaleWorkers--;
        _controller.text = _numberOfFemaleWorkers.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      
        Expanded(
          child: TextFormField(
            controller: _controller,
            readOnly: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              labelText: 'عدد العاملات',
              labelStyle: TextStyles.regular14, // Replace with your `TextStyles.regular14`
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
            ),
          ),
        ), 
        SizedBox(width: 7),
         Container(
            width: 46,
            height: 44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
          color: Color(0xffD6D6D6),),
           child: IconButton(
            icon: Icon(Icons.add),
            onPressed: _increment,
                   ),
         ),
        SizedBox(width: 7),

         Container(
           width: 46,
            height: 44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
          color: Color(0xffD6D6D6),),
           child: IconButton(
            icon: Icon(Icons.remove),
            onPressed: _decrement,
                   ),
         ),
       
      ],
    );
  }
}
