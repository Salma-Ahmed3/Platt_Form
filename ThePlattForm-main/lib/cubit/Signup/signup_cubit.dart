import 'package:bloc/bloc.dart';
import 'package:nowproject/cubit/Signup/signup_state.dart';
import 'package:nowproject/services/services.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  Future<void> signUp({
    required String userName,
    required String email,
    required String password,
  }) async {
    emit(SignUpLoading());

    
      final body = {
        "userName": userName,
        "email": email,
        "password": password,
      };

      final response = await AppService.callService(
        actionType: ActionType.post,
        apiName: 'Account/Register',
        body: body,
      );

    if (email == email && password == password) {
        emit(SignUpSuccess(
        
        ));
        }
      else if(email == null && password == null){
        emit(SignUpFailure(
        'البريد الالكتروني اوكلمة المرور خاطئة'
        ));
        
    }
  }
}
