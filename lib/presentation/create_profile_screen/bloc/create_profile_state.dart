// ignore_for_file: must_be_immutable

part of 'create_profile_bloc.dart';

/// Represents the state of CreateProfile in the application.
class CreateProfileState extends Equatable {
  CreateProfileState({
    this.nameController,
    this.phoneNumberController,
    this.emailController,
    this.createProfileModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? phoneNumberController;

  TextEditingController? emailController;

  CreateProfileModel? createProfileModelObj;

  @override
  List<Object?> get props => [
        nameController,
        phoneNumberController,
        emailController,
        createProfileModelObj,
      ];

  CreateProfileState copyWith({
    TextEditingController? nameController,
    TextEditingController? phoneNumberController,
    TextEditingController? emailController,
    CreateProfileModel? createProfileModelObj,
  }) {
    return CreateProfileState(
      nameController: nameController ?? this.nameController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      emailController: emailController ?? this.emailController,
      createProfileModelObj:
          createProfileModelObj ?? this.createProfileModelObj,
    );
  }
}
