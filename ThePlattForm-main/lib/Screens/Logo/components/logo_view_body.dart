import 'package:flutter/material.dart';
import 'package:nowproject/Screens/LogIn/login_view.dart';
import 'package:nowproject/utility/app_text_style.dart';

class LogoViewBody extends StatefulWidget {
  const LogoViewBody({super.key});

  @override
  State<LogoViewBody> createState() => _LogoViewBodyState();
}

class _LogoViewBodyState extends State<LogoViewBody> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(_createRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeTransition(
        opacity: _animation,
        child:   Text(
          'LOGO',
          style: TextStyles.bold40,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const LoginView(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}

