import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:gym/widgets/custom_icon_button.dart';
import 'models/onboarding_three_model.dart';
import 'package:flutter/material.dart';
import 'package:gym/core/app_export.dart';
import 'bloc/onboarding_three_bloc.dart';

class OnboardingThreeScreen extends StatelessWidget {
  const OnboardingThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingThreeBloc>(
      create: (context) => OnboardingThreeBloc(OnboardingThreeState(
        onboardingThreeModelObj: OnboardingThreeModel(),
      ))
        ..add(OnboardingThreeInitialEvent()),
      child: OnboardingThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingThreeBloc, OnboardingThreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: SizedBox(
              height: 797.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSubtract,
                    height: 378.v,
                    alignment: Alignment.bottomCenter,
                  ),
                  _buildPassword(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 18.h,
          right: 18.h,
          bottom: 58.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 347.h,
              margin: EdgeInsets.symmetric(horizontal: 3.h),
              child: Text(
                "msg".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineSmall,
              ),
            ),
            SizedBox(height: 105.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 10.v,
                  margin: EdgeInsets.symmetric(vertical: 35.v),
                  child: AnimatedSmoothIndicator(
                    activeIndex: 0,
                    count: 3,
                    effect: ScrollingDotsEffect(
                      spacing: 12,
                      activeDotColor: theme.colorScheme.primary,
                      dotColor: theme.colorScheme.primary.withOpacity(0.49),
                      dotHeight: 10.v,
                      dotWidth: 10.h,
                    ),
                  ),
                ),
                CustomIconButton(
                  height: 80.adaptSize,
                  width: 80.adaptSize,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgButton,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
