import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:gym/presentation/create_profile_confirm_screen/models/create_profile_confirm_model.dart';part 'create_profile_confirm_event.dart';part 'create_profile_confirm_state.dart';/// A bloc that manages the state of a CreateProfileConfirm according to the event that is dispatched to it.
class CreateProfileConfirmBloc extends Bloc<CreateProfileConfirmEvent, CreateProfileConfirmState> {CreateProfileConfirmBloc(CreateProfileConfirmState initialState) : super(initialState) { on<CreateProfileConfirmInitialEvent>(_onInitialize); }

_onInitialize(CreateProfileConfirmInitialEvent event, Emitter<CreateProfileConfirmState> emit, ) async  { emit(state.copyWith(nameController: TextEditingController(), phoneNumberController: TextEditingController(), emailController: TextEditingController(), )); } 
 }
