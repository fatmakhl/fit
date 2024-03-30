import 'package:gym/widgets/app_bar/custom_app_bar.dart';
import 'package:gym/widgets/app_bar/appbar_subtitle.dart';
import 'package:gym/core/utils/validation_functions.dart';
import 'package:gym/widgets/custom_text_form_field.dart';
import 'package:gym/widgets/custom_elevated_button.dart';
import 'models/create_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:gym/core/app_export.dart';
import 'bloc/create_profile_bloc.dart';

class CreateProfileScreen extends StatelessWidget {
  CreateProfileScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<CreateProfileBloc>(
      create: (context) => CreateProfileBloc(CreateProfileState(
        createProfileModelObj: CreateProfileModel(),
      ))
        ..add(CreateProfileInitialEvent()),
      child: CreateProfileScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 18.h,
                  vertical: 6.v,
                ),
                child: Column(
                  children: [
                    Container(
                      width: 329.h,
                      margin: EdgeInsets.symmetric(horizontal: 12.h),
                      child: Text(
                        "msg_please_enter_your3".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 18.v),
                    Container(
                      height: 80.adaptSize,
                      width: 80.adaptSize,
                      padding: EdgeInsets.all(20.h),
                      decoration: AppDecoration.outlinePrimary.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder40,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgMaterialSymbol,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        alignment: Alignment.center,
                      ),
                    ),
                    SizedBox(height: 11.v),
                    Text(
                      "lbl_add_photo".tr,
                      style: CustomTextStyles.titleMedium18,
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "msg_this_will_be_your".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 11.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "lbl_name".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 7.v),
                    _buildName(context),
                    SizedBox(height: 14.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "lbl_phone_number".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    _buildPhoneNumber(context),
                    SizedBox(height: 11.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "lbl_email".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 8.v),
                    _buildEmail(context),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildGetStared(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_create_profile".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return BlocSelector<CreateProfileBloc, CreateProfileState,
        TextEditingController?>(
      selector: (state) => state.nameController,
      builder: (context, nameController) {
        return CustomTextFormField(
          controller: nameController,
          hintText: "lbl_enter_your_name".tr,
          hintStyle: theme.textTheme.bodyMedium!,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return BlocSelector<CreateProfileBloc, CreateProfileState,
        TextEditingController?>(
      selector: (state) => state.phoneNumberController,
      builder: (context, phoneNumberController) {
        return CustomTextFormField(
          controller: phoneNumberController,
          hintText: "msg_enter_your_phone".tr,
          hintStyle: theme.textTheme.bodyMedium!,
          textInputType: TextInputType.phone,
          validator: (value) {
            if (!isValidPhone(value)) {
              return "err_msg_please_enter_valid_phone_number".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return BlocSelector<CreateProfileBloc, CreateProfileState,
        TextEditingController?>(
      selector: (state) => state.emailController,
      builder: (context, emailController) {
        return CustomTextFormField(
          controller: emailController,
          hintText: "msg_enter_your_phone2".tr,
          hintStyle: theme.textTheme.bodyMedium!,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildGetStared(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_get_stared".tr,
      margin: EdgeInsets.only(
        left: 18.h,
        right: 18.h,
        bottom: 58.v,
      ),
    );
  }
}
