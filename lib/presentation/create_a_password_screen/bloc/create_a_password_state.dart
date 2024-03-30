// ignore_for_file: must_be_immutable

part of 'create_a_password_bloc.dart';

/// Represents the state of CreateAPassword in the application.
class CreateAPasswordState extends Equatable {
  CreateAPasswordState({
    this.passwordController,
    this.confirmpasswordController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.createAPasswordModelObj,
  });

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  CreateAPasswordModel? createAPasswordModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        passwordController,
        confirmpasswordController,
        isShowPassword,
        isShowPassword1,
        createAPasswordModelObj,
      ];

  CreateAPasswordState copyWith({
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    bool? isShowPassword,
    bool? isShowPassword1,
    CreateAPasswordModel? createAPasswordModelObj,
  }) {
    return CreateAPasswordState(
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      createAPasswordModelObj:
          createAPasswordModelObj ?? this.createAPasswordModelObj,
    );
  }
}
