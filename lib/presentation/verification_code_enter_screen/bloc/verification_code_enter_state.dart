// ignore_for_file: must_be_immutable

part of 'verification_code_enter_bloc.dart';

/// Represents the state of VerificationCodeEnter in the application.
class VerificationCodeEnterState extends Equatable {
  VerificationCodeEnterState({
    this.otpController,
    this.verificationCodeEnterModelObj,
  });

  TextEditingController? otpController;

  VerificationCodeEnterModel? verificationCodeEnterModelObj;

  @override
  List<Object?> get props => [
        otpController,
        verificationCodeEnterModelObj,
      ];

  VerificationCodeEnterState copyWith({
    TextEditingController? otpController,
    VerificationCodeEnterModel? verificationCodeEnterModelObj,
  }) {
    return VerificationCodeEnterState(
      otpController: otpController ?? this.otpController,
      verificationCodeEnterModelObj:
          verificationCodeEnterModelObj ?? this.verificationCodeEnterModelObj,
    );
  }
}
