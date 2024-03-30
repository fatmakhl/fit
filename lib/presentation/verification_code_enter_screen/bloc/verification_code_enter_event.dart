// ignore_for_file: must_be_immutable

part of 'verification_code_enter_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VerificationCodeEnter widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VerificationCodeEnterEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the VerificationCodeEnter widget is first created.
class VerificationCodeEnterInitialEvent extends VerificationCodeEnterEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends VerificationCodeEnterEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
