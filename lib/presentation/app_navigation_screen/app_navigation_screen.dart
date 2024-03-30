import '../daily_calorie_dialog/daily_calorie_dialog.dart';
import '../done_dialog/done_dialog.dart';
import '../done_one_dialog/done_one_dialog.dart';
import '../reports_edit_weight_dialog/reports_edit_weight_dialog.dart';
import '../reports_edit_height_dialog/reports_edit_height_dialog.dart';
import '../congratulation_dialog/congratulation_dialog.dart';
import '../scan_one_bottomsheet/scan_one_bottomsheet.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:gym/core/app_export.dart';
import 'bloc/app_navigation_bloc.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Search -result-not-found-One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.searchResultNotFoundOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Search".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.searchScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "After Recently search-page".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.afterRecentlySearchPageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home_Regular - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homeRegularContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "daily calorie - Dialog".tr,
                              onTapScreenTitle: () => onTapDialogTitle(
                                  context, DailyCalorieDialog.builder(context)),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Information".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.informationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "your height".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.yourHeightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Application type".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.applicationTypeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Application type_active".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.applicationTypeActiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Done - Dialog".tr,
                              onTapScreenTitle: () => onTapDialogTitle(
                                  context, DoneDialog.builder(context)),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Details ".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.detailsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "camera".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.cameraScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Home_post- injury rehabilitation".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homePostInjuryRehabilitationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "when end day clicked".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.whenEndDayClickedScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Splash".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Onboarding One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onboardingOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Onboarding Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onboardingTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Onboarding Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onboardingThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Done One - Dialog".tr,
                              onTapScreenTitle: () => onTapDialogTitle(
                                  context, DoneOneDialog.builder(context)),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "muscules  choices".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.musculesChoicesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "muscules  choices One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.musculesChoicesOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Login".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sign Up".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signUpScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Forgot Password?".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.forgotPasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Verification Code ( Forgot Password )".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .verificationCodeForgotPasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Create a New Password".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.createANewPasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Reports_edit_weight - Dialog".tr,
                              onTapScreenTitle: () => onTapDialogTitle(context,
                                  ReportsEditWeightDialog.builder(context)),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Reports_edit_height - Dialog".tr,
                              onTapScreenTitle: () => onTapDialogTitle(context,
                                  ReportsEditHeightDialog.builder(context)),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "History".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.historyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Exercise".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.exerciseScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Congratulation! - Dialog".tr,
                              onTapScreenTitle: () => onTapDialogTitle(context,
                                  CongratulationDialog.builder(context)),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Verification Code".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.verificationCodeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Verification code Enter".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.verificationCodeEnterScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Create a Password".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.createAPasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Create Profile".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.createProfileScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Create Profile Confirm".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.createProfileConfirmScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Congratulation of account".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.congratulationOfAccountScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "scan One - BottomSheet".tr,
                              onTapScreenTitle: () => onTapBottomSheetTitle(
                                  context, ScanOneBottomsheet.builder(context)),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "notification".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Setting".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.settingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Edit Profile".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.editProfileScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common click event for dialog
  void onTapDialogTitle(
    BuildContext context,
    Widget className,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return className;
      },
    );
  }

  /// Common click event for bottomsheet
  void onTapBottomSheetTitle(
    BuildContext context,
    Widget className,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return className;
      },
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
