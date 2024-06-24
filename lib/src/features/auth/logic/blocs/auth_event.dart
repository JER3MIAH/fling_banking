import 'package:equatable/equatable.dart';
import 'package:fling_banking/src/features/auth/data/enums.dart';

class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class SelectAccountTypeEvent extends AuthEvent {
  final AccountType accountType;
  const SelectAccountTypeEvent({
    required this.accountType,
  });

  @override
  List<Object?> get props => [accountType];
}
