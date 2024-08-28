import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Home/home_view.dart';
import 'package:nowproject/Screens/LogIn/components/custom_button.dart';
import 'package:nowproject/Screens/LogIn/components/custom_text_form_failed.dart';
import 'package:nowproject/Screens/SignUp/components/sign_up_terms_and_condition.dart';
import 'package:nowproject/cubit/Signup/signup_cubit.dart';
import 'package:nowproject/cubit/Signup/signup_state.dart';
import 'package:nowproject/components/custom_password_failed/password_failed.dart';
import 'package:nowproject/utility/app_text_style.dart';
import '../../../components/custom_text_account/custom_text_account.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, userName, password;
  late bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SignUpCubit(),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: formKey,
            autovalidateMode: autovalidateMode,
            child: Column(
              children: [
                SizedBox(height: 24.h),
                CustomTextFormFaild(
                  onSaved: (value) {
                    userName = value!;
                  },
                  hitText: 'الاسم كامل',
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.name,
                ),
                SizedBox(height: 20.h),
                CustomTextFormFaild(
                  onSaved: (value) {
                    email = value!;
                  },
                  hitText: 'البريد الإلكتروني',
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 20.h),
                PasswordFailed(
                  onSaved: (value) {
                    password = value!;
                  },
                ),
                SizedBox(height: 18.h),
                SignUpTermsAndCondition(
                  onChanged: (value) {
                    setState(() {
                      isTermsAccepted = value;
                    });
                  },
                ),
                SizedBox(height: 25.h),
                BlocConsumer<SignUpCubit, SignUpState>(
                  listener: (context, state) {
                    if (state is SignUpSuccess) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Align(
                          alignment: Alignment.center,
                          child: Text('تم تسجيل الحساب بنجاح', style: TextStyles.regular16)),backgroundColor: Colors.blue),
                      );
                      Navigator.of(context).pushNamed(HomeView.routeName);
                    } else if (state is SignUpFailure) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Align(
                          alignment: Alignment.center,
                          child: Text('هناك خطاء في تسجيل الحساب', style: TextStyles.regular16)),backgroundColor: Colors.red)
                      );
                    }
                  },
                  builder: (context, state) {
                    if (state is SignUpLoading) {
                      return const CircularProgressIndicator();
                    }

                    return CustomButtonLogin(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          if (isTermsAccepted) {
                            formKey.currentState!.save();
                            context.read<SignUpCubit>().signUp(
                                  userName: userName,
                                  email: email,
                                  password: password,
                                );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('يرجى قبول الشروط والأحكام')),
                            );
                          }
                        } else {
                          setState(() {
                            autovalidateMode = AutovalidateMode.always;
                          });
                        }
                      },
                      text: 'إنشاء حساب جديد',
                    );
                  },
                ),
                SizedBox(height: 26.h),
                CustomTextAccount(
                  titleHaveAccountOrNot: 'تمتلك حساب بالفعل ؟',
                  titleNewAccount: '  تسجيل دخول  ',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(height: 25.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
