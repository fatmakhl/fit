import 'package:gym/widgets/app_bar/custom_app_bar.dart';
import 'package:gym/widgets/app_bar/appbar_leading_image.dart';
import 'package:gym/widgets/app_bar/appbar_subtitle_nine.dart';
import 'package:gym/widgets/custom_text_form_field.dart';
import 'models/after_recently_search_page_model.dart';
import 'package:flutter/material.dart';
import 'package:gym/core/app_export.dart';
import 'bloc/after_recently_search_page_bloc.dart';

class AfterRecentlySearchPageScreen extends StatelessWidget {
  const AfterRecentlySearchPageScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AfterRecentlySearchPageBloc>(
      create: (context) =>
          AfterRecentlySearchPageBloc(AfterRecentlySearchPageState(
        afterRecentlySearchPageModelObj: AfterRecentlySearchPageModel(),
      ))
            ..add(AfterRecentlySearchPageInitialEvent()),
      child: AfterRecentlySearchPageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 16.v,
          ),
          child: Column(
            children: [
              _buildFirrcrosssmall(context),
              SizedBox(height: 11.v),
              _buildDatascience(context),
              SizedBox(height: 10.v),
              _buildDatabase(context),
              SizedBox(height: 12.v),
              _buildDataanalysis(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 45.v,
      leadingWidth: 38.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgFiRrAngleLeft,
        margin: EdgeInsets.only(
          left: 18.h,
          top: 13.v,
          bottom: 12.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleNine(
        text: "lbl_search".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFirrcrosssmall(BuildContext context) {
    return BlocSelector<AfterRecentlySearchPageBloc,
        AfterRecentlySearchPageState, TextEditingController?>(
      selector: (state) => state.firrcrosssmallController,
      builder: (context, firrcrosssmallController) {
        return CustomTextFormField(
          controller: firrcrosssmallController,
          hintText: "lbl_dat".tr,
          hintStyle: theme.textTheme.titleMedium!,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 9.v, 12.h, 9.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgFirrcrosssmall,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 42.v,
          ),
          contentPadding: EdgeInsets.only(
            left: 12.h,
            top: 8.v,
            bottom: 8.v,
          ),
          borderDecoration: TextFormFieldStyleHelper.outlineBlueGray,
          filled: false,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDatascience(BuildContext context) {
    return BlocSelector<AfterRecentlySearchPageBloc,
        AfterRecentlySearchPageState, TextEditingController?>(
      selector: (state) => state.datascienceController,
      builder: (context, datascienceController) {
        return CustomTextFormField(
          controller: datascienceController,
          hintText: "lbl_data_science".tr,
          hintStyle: theme.textTheme.titleLarge!,
          contentPadding: EdgeInsets.symmetric(horizontal: 1.h),
          borderDecoration:
              TextFormFieldStyleHelper.underLineOnPrimaryContainer,
          filled: false,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDatabase(BuildContext context) {
    return BlocSelector<AfterRecentlySearchPageBloc,
        AfterRecentlySearchPageState, TextEditingController?>(
      selector: (state) => state.databaseController,
      builder: (context, databaseController) {
        return CustomTextFormField(
          controller: databaseController,
          hintText: "lbl_database".tr,
          hintStyle: theme.textTheme.titleLarge!,
          borderDecoration:
              TextFormFieldStyleHelper.underLineOnPrimaryContainer,
          filled: false,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDataanalysis(BuildContext context) {
    return BlocSelector<AfterRecentlySearchPageBloc,
        AfterRecentlySearchPageState, TextEditingController?>(
      selector: (state) => state.dataanalysisController,
      builder: (context, dataanalysisController) {
        return CustomTextFormField(
          controller: dataanalysisController,
          hintText: "lbl_data_analysis".tr,
          hintStyle: theme.textTheme.titleLarge!,
          textInputAction: TextInputAction.done,
          borderDecoration:
              TextFormFieldStyleHelper.underLineOnPrimaryContainer,
          filled: false,
        );
      },
    );
  }
}
