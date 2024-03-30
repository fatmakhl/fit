// ignore_for_file: must_be_immutable

part of 'edit_profile_bloc.dart';

/// Represents the state of EditProfile in the application.
class EditProfileState extends Equatable {
  EditProfileState({
    this.nameController,
    this.phoneNumberController,
    this.emailController,
    this.selectedDropDownValue,
    this.editProfileModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? phoneNumberController;

  TextEditingController? emailController;

  SelectionPopupModel? selectedDropDownValue;

  EditProfileModel? editProfileModelObj;

  @override
  List<Object?> get props => [
        nameController,
        phoneNumberController,
        emailController,
        selectedDropDownValue,
        editProfileModelObj,
      ];

  EditProfileState copyWith({
    TextEditingController? nameController,
    TextEditingController? phoneNumberController,
    TextEditingController? emailController,
    SelectionPopupModel? selectedDropDownValue,
    EditProfileModel? editProfileModelObj,
  }) {
    return EditProfileState(
      nameController: nameController ?? this.nameController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      emailController: emailController ?? this.emailController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      editProfileModelObj: editProfileModelObj ?? this.editProfileModelObj,
    );
  }
}
