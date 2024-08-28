import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Logo/logo_view.dart';
import 'package:nowproject/routes/on_generate_route.dart';

void main() {
  runApp(const PlattForm());
}

class PlattForm extends StatelessWidget {
  const PlattForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
            designSize: Size(375, 812),
        splitScreenMode: true,
        minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: onGenerateRoute,
        initialRoute: LogoView.routeName,
        // initialRoute: HomeView.routeName,
      ),
    );
    }
    }