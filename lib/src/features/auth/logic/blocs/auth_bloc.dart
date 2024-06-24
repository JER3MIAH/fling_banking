import 'package:fling_banking/src/features/auth/data/models/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState(user: AppUser.empty())) {
    on<SelectAccountTypeEvent>((event, emit) {
      emit(state.copyWith(
        user: state.user.copyWith(
          accountType: event.accountType,
        ),
      ));
    });
  }
}
