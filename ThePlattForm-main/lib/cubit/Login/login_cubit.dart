import 'package:bloc/bloc.dart';
import 'package:nowproject/cubit/Login/login_state.dart';

import '../../services/services.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> login(String email, String password) async {
    emit(LoginLoading());
      final body = {
        'userName': email,
        'password': password,
      };
      final response = await AppService.callService(
        actionType: ActionType.post,
        apiName: 'Account/Login',
        body: body,
      );
        if (email == email && password == password) {
        emit(LoginSuccess(
          message: 'تم تسجيل الدخول بنجاح',
        ));
        }
        else if(email == null && password == null){
        emit(LoginFailuer(
        message: 'البريد الالكتروني اوكلمة المرور خاطئة'
        ));
        
    }
  }
}

