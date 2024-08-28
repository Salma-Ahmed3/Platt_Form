import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nowproject/Screens/Logo/components/logo_view_body.dart';

class LogoView extends StatelessWidget {
  const LogoView({super.key});
  static const routeName = 'Logo';


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LogoViewBody(),
    );
  }
}