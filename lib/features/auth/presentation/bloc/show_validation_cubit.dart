import 'package:flutter_bloc/flutter_bloc.dart';

class ShowValidationCubit extends Cubit<bool> {
  ShowValidationCubit() : super(false);

  void toggleValidation() {
    emit(!state);
  }

  void checkValidation(String password) {
    if (password.length < 8 &&
        password.contains(RegExp(r'[A-Z]')) &&
        password.contains(RegExp(r'[a-z]')) &&
        password.contains(RegExp(r'[0-9]')) &&
        password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      emit(true);
    } else {
      emit(false);
    }
  }
}
