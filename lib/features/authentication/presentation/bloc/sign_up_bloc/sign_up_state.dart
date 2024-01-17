part of 'sign_up_bloc.dart';


class SignUpState {
  bool isObscure;

  SignUpState({this.isObscure = false});


  copyWith({
    required bool isObscure,
  }) {
    return SignUpState(
      isObscure: isObscure ?? this.isObscure,
    );
  }
}




