import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:gym/widgets/custom_icon_button.dart';
import 'models/onboarding_two_model.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:gym/core/app_export.dart';
import 'bloc/onboarding_two_bloc.dart';

class OnboardingTwoScreen extends StatelessWidget {
  const OnboardingTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingTwoBloc>(
      create: (context) => OnboardingTwoBloc(OnboardingTwoState(
        onboardingTwoModelObj: OnboardingTwoModel(),
      ))
        ..add(OnboardingTwoInitialEvent()),
      child: OnboardingTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingTwoBloc, OnboardingTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  Spacer(),
                  _buildFrameForty(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFrameForty(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 58.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgSubtract,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 5.v),
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
          SizedBox(height: 17.v),
          Container(
            width: 308.h,
            margin: EdgeInsets.only(
              left: 22.h,
              right: 23.h,
            ),
            child: Text(
              "msg_semper_in_cursus".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 22.v),
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
                  imagePath: ImageConstant.imgClock,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
