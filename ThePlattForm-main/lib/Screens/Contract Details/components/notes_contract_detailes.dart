import 'package:flutter/material.dart';
import 'package:nowproject/utility/app_text_style.dart';

class NotesContractDetails extends StatelessWidget {
  const NotesContractDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                width: 383,
                height: 79,
                decoration: BoxDecoration(
                  color: const Color(0xffF8F8F8),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  )
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('سيتم اختيار العاملة من مقر الشركة - سكن الرياض' , style: TextStyles.bold14,)),
              );
  }
}