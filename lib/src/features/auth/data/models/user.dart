// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fling_banking/src/features/auth/data/enums.dart';

class AppUser {
  final String name;
  final AccountType accountType;
  final Gender gender;
  final String dob;

  AppUser({
    required this.name,
    required this.gender,
    required this.accountType,
    required this.dob,
  });

  AppUser.empty()
      : name = 'Kindness Orimolade',
        gender = Gender.female,
        accountType = AccountType.savings,
        dob = '';

  AppUser copyWith({
    String? name,
    AccountType? accountType,
    Gender? gender,
    String? dob,
  }) {
    return AppUser(
      name: name ?? this.name,
      accountType: accountType ?? this.accountType,
      gender: gender ?? this.gender,
      dob: dob ?? this.dob,
    );
  }
}
