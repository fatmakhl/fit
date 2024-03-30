import 'package:gym/widgets/custom_elevated_button.dart';
import 'models/congratulation_model.dart';
import 'package:flutter/material.dart';
import 'package:gym/core/app_export.dart';
import 'bloc/congratulation_bloc.dart';

// ignore_for_file: must_be_immutable
class CongratulationDialog extends StatelessWidget {
  const CongratulationDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CongratulationBloc>(
      create: (context) => CongratulationBloc(CongratulationState(
        congratulationModelObj: CongratulationModel(),
      ))
        ..add(CongratulationInitialEvent()),
      child: CongratulationDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 354.h,
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 30.v,
          ),
          decoration: AppDecoration.white.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder22,
          ),
          child: Material(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup,
                  width: 107.h,
                ),
                SizedBox(height: 26.v),
                Text(
                  "lbl_congratulation".tr,
                  style: CustomTextStyles.titleMediumSemiBold18,
                ),
                SizedBox(height: 5.v),
                Text(
                  "msg_your_account_has".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 24.v),
                CustomElevatedButton(
                  text: "lbl_ok".tr,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
