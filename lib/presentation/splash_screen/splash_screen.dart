import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:gym/core/app_export.dart';
import 'bloc/splash_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (context) => SplashBloc(SplashState(
        splashModelObj: SplashModel(),
      ))
        ..add(SplashInitialEvent()),
      child: SplashScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 66.v),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(
                    flex: 52,
                  ),
                  Container(
                    height: 150.adaptSize,
                    width: 150.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.blueGray10001,
                      borderRadius: BorderRadius.circular(
                        75.h,
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 47,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgFrame42,
                    height: 73.adaptSize,
                    width: 73.adaptSize,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
