import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:gym/presentation/verification_code_enter_screen/models/verification_code_enter_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'verification_code_enter_event.dart';part 'verification_code_enter_state.dart';/// A bloc that manages the state of a VerificationCodeEnter according to the event that is dispatched to it.
class VerificationCodeEnterBloc extends Bloc<VerificationCodeEnterEvent, VerificationCodeEnterState> with  CodeAutoFill {VerificationCodeEnterBloc(VerificationCodeEnterState initialState) : super(initialState) { on<VerificationCodeEnterInitialEvent>(_onInitialize); on<ChangeOTPEvent>(_changeOTP); }

@override codeUpdated() { add(ChangeOTPEvent(code: code!)); } 
_changeOTP(ChangeOTPEvent event, Emitter<VerificationCodeEnterState> emit, ) { emit(state.copyWith(otpController: TextEditingController(text: event.code), )); } 
_onInitialize(VerificationCodeEnterInitialEvent event, Emitter<VerificationCodeEnterState> emit, ) async  { emit(state.copyWith(otpController: TextEditingController(), )); listenForCode(); } 
 }
