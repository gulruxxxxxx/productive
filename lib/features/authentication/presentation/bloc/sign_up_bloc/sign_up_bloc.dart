

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



part 'sign_up_event.dart';

part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final mailTextEditingController = TextEditingController();
  final passwordTextEditingController = TextEditingController();

  SignUpBloc() : super(SignUpState()) {
    on<ObscurePasswordEvent>(_onObscurePassword);
  }

  _onObscurePassword(ObscurePasswordEvent event, Emitter<SignUpState> emit) {
    emit(state.copyWith(isObscure: !state.isObscure));
  }
}
