import 'package:gym/widgets/app_bar/custom_app_bar.dart';
import 'package:gym/widgets/app_bar/appbar_leading_image.dart';
import 'package:gym/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:gym/widgets/custom_icon_button.dart';
import 'package:gym/widgets/custom_text_form_field.dart';
import 'package:gym/core/utils/validation_functions.dart';
import 'package:gym/widgets/custom_drop_down.dart';
import 'models/edit_profile_model.dart';
import 'package:gym/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:gym/core/app_export.dart';
import 'bloc/edit_profile_bloc.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<EditProfileBloc>(
      create: (context) => EditProfileBloc(EditProfileState(
        editProfileModelObj: EditProfileModel(),
      ))
        ..add(EditProfileInitialEvent()),
      child: EditProfileScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
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
                height: 642.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 17.v),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        height: 80.adaptSize,
                        width: 80.adaptSize,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgIconContainer80x80,
                              height: 80.adaptSize,
                              width: 80.adaptSize,
                              radius: BorderRadius.circular(
                                40.h,
                              ),
                              alignment: Alignment.center,
                            ),
                            CustomIconButton(
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              padding: EdgeInsets.all(4.h),
                              decoration: IconButtonStyleHelper.fillPrimary,
                              alignment: Alignment.bottomRight,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgPhCamera,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 2.v),
                        padding: EdgeInsets.symmetric(horizontal: 18.h),
                        decoration: AppDecoration.outlinePrimary1,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 49.v),
                            Text(
                              "lbl_ahmed_hossam".tr,
                              style: CustomTextStyles.titleMedium18,
                            ),
                            SizedBox(height: 18.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "lbl_name".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                            SizedBox(height: 9.v),
                            _buildName(context),
                            SizedBox(height: 18.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "lbl_phone_number".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                            SizedBox(height: 7.v),
                            _buildPhoneNumber(context),
                            SizedBox(height: 15.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "lbl_date_of_birth".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                            SizedBox(height: 8.v),
                            _buildInputField(context),
                            SizedBox(height: 15.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "lbl_email".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                            SizedBox(height: 10.v),
                            _buildEmail(context),
                            SizedBox(height: 18.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "lbl_country".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                            SizedBox(height: 5.v),
                            BlocSelector<EditProfileBloc, EditProfileState,
                                EditProfileModel?>(
                              selector: (state) => state.editProfileModelObj,
                              builder: (context, editProfileModelObj) {
                                return CustomDropDown(
                                  icon: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 12.v, 12.h, 12.v),
                                    child: CustomImageView(
                                      imagePath: ImageConstant
                                          .imgArrowdownOnerrorcontainer24x24,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                    ),
                                  ),
                                  hintText: "lbl_egypt".tr,
                                  hintStyle: CustomTextStyles
                                      .bodyMediumOnErrorContainer,
                                  items:
                                      editProfileModelObj?.dropdownItemList ??
                                          [],
                                  borderDecoration: DropDownStyleHelper
                                      .outlineOnPrimaryContainerTL8,
                                  filled: false,
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildUpdate(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownOnerrorcontainer,
        margin: EdgeInsets.only(
          left: 18.h,
          top: 14.v,
          bottom: 13.v,
        ),
      ),
      title: AppbarSubtitleThree(
        text: "lbl_edit_profile".tr,
        margin: EdgeInsets.only(left: 12.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return BlocSelector<EditProfileBloc, EditProfileState,
        TextEditingController?>(
      selector: (state) => state.nameController,
      builder: (context, nameController) {
        return CustomTextFormField(
          controller: nameController,
          hintText: "lbl_ahmed_hossam".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return BlocSelector<EditProfileBloc, EditProfileState,
        TextEditingController?>(
      selector: (state) => state.phoneNumberController,
      builder: (context, phoneNumberController) {
        return CustomTextFormField(
          controller: phoneNumberController,
          hintText: "lbl_2082806994".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.grey.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Text(
              "lbl_09_19_20003".tr,
              style: CustomTextStyles.bodyMediumOnErrorContainer,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgTelevisionOnerrorcontainer,
            width: 18.h,
            margin: EdgeInsets.only(
              right: 3.h,
              bottom: 1.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return BlocSelector<EditProfileBloc, EditProfileState,
        TextEditingController?>(
      selector: (state) => state.emailController,
      builder: (context, emailController) {
        return CustomTextFormField(
          controller: emailController,
          hintText: "msg_ahmdhsammhmd2_gmail_com".tr,
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
  Widget _buildUpdate(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_update".tr,
      margin: EdgeInsets.only(
        left: 18.h,
        right: 18.h,
        bottom: 52.v,
      ),
      buttonTextStyle: CustomTextStyles.titleMediumGray5001,
    );
  }
}
