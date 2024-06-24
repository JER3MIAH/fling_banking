// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:fling_banking/src/features/auth/data/models/user.dart';

export 'auth_bloc.dart';
export 'auth_event.dart';

class AuthState extends Equatable {
  final AppUser user;

  const AuthState({
    required this.user,
  });

  @override
  List<Object?> get props => [user];

  AuthState copyWith({
    AppUser? user,
  }) {
    return AuthState(
      user: user ?? this.user,
    );
  }
}
