import 'package:flutter/material.dart';
import 'package:nowproject/Screens/LogIn/components/custom_text_form_failed.dart';

class PasswordFailed extends StatefulWidget {
  const PasswordFailed({
    super.key,
    this.onSaved,
  });

  final void Function(String?)? onSaved;

  @override
  State<PasswordFailed> createState() => _PasswordFailedState();
}

class _PasswordFailedState extends State<PasswordFailed> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormFaild(
      obscureText: obscureText,
      onSaved: widget.onSaved, 
      hitText: '  كلمة المرور',
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.visiblePassword,
      suffixIcon: GestureDetector(
        onTap: () {
          obscureText = !obscureText;
          setState(() {});
        },
        child: obscureText
            ? const Icon(
                Icons.visibility_off,
                color: Color.fromARGB(255, 125, 132, 133),
              )
            : const Icon(
                Icons.remove_red_eye_rounded,
                color: Color.fromARGB(255, 125, 132, 133),
              ),
      ),
    );
  }
}
