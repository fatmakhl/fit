// ignore_for_file: must_be_immutable

part of 'create_profile_confirm_bloc.dart';

/// Represents the state of CreateProfileConfirm in the application.
class CreateProfileConfirmState extends Equatable {
  CreateProfileConfirmState({
    this.nameController,
    this.phoneNumberController,
    this.emailController,
    this.createProfileConfirmModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? phoneNumberController;

  TextEditingController? emailController;

  CreateProfileConfirmModel? createProfileConfirmModelObj;

  @override
  List<Object?> get props => [
        nameController,
        phoneNumberController,
        emailController,
        createProfileConfirmModelObj,
      ];

  CreateProfileConfirmState copyWith({
    TextEditingController? nameController,
    TextEditingController? phoneNumberController,
    TextEditingController? emailController,
    CreateProfileConfirmModel? createProfileConfirmModelObj,
  }) {
    return CreateProfileConfirmState(
      nameController: nameController ?? this.nameController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      emailController: emailController ?? this.emailController,
      createProfileConfirmModelObj:
          createProfileConfirmModelObj ?? this.createProfileConfirmModelObj,
    );
  }
}
