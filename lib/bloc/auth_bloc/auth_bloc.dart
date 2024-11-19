import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sms_autofill/sms_autofill.dart';
import '../../repo/auth_fire_repo.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthFireRepo authFireRepo = AuthFireRepo();

  AuthBloc() : super(AuthInitial()) {

    on<SignInClickEvent>((event, emit) {
      // emit(AuthSignInComplete());
      SmsAutoFill().listenForCode();
      // SmsAutoFill().unregisterListener();
    });
  }

  void init() {
    print('start init');

    if (authFireRepo.auth.currentUser != null) {
      print('there is user');
      emit(AuthSignInComplete());

      if(authFireRepo.auth.currentUser!.uid != null){
        print(authFireRepo.auth.currentUser!.uid );
      }
      else{
        print('there is no id');
      }
    }else{
      print('there is no user');
    }
  }
  void doEmit(state){
    emit(state);
  }
}
