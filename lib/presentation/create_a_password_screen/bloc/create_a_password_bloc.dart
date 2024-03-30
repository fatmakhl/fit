import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:gym/presentation/create_a_password_screen/models/create_a_password_model.dart';part 'create_a_password_event.dart';part 'create_a_password_state.dart';/// A bloc that manages the state of a CreateAPassword according to the event that is dispatched to it.
class CreateAPasswordBloc extends Bloc<CreateAPasswordEvent, CreateAPasswordState> {CreateAPasswordBloc(CreateAPasswordState initialState) : super(initialState) { on<CreateAPasswordInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<CreateAPasswordState> emit, ) { emit(state.copyWith(isShowPassword: event.value, )); } 
_changePasswordVisibility1(ChangePasswordVisibilityEvent1 event, Emitter<CreateAPasswordState> emit, ) { emit(state.copyWith(isShowPassword1: event.value, )); } 
_onInitialize(CreateAPasswordInitialEvent event, Emitter<CreateAPasswordState> emit, ) async  { emit(state.copyWith(passwordController: TextEditingController(), confirmpasswordController: TextEditingController(), isShowPassword: true, isShowPassword1: true, )); } 
 }
