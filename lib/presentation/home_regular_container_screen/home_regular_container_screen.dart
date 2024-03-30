import 'package:gym/presentation/home_regular_page/home_regular_page.dart';import 'package:gym/presentation/reports_page/reports_page.dart';import 'package:gym/presentation/chat_board_page/chat_board_page.dart';import 'package:gym/presentation/scan_page/scan_page.dart';import 'package:gym/presentation/my_account_page/my_account_page.dart';import 'package:gym/widgets/custom_bottom_bar.dart';import 'models/home_regular_container_model.dart';import 'package:flutter/material.dart';import 'package:gym/core/app_export.dart';import 'bloc/home_regular_container_bloc.dart';
// ignore_for_file: must_be_immutable
class HomeRegularContainerScreen extends StatelessWidget {HomeRegularContainerScreen({Key? key}) : super(key: key, );

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<HomeRegularContainerBloc>(create: (context) => HomeRegularContainerBloc(HomeRegularContainerState(homeRegularContainerModelObj: HomeRegularContainerModel(), ))..add(HomeRegularContainerInitialEvent()), child: HomeRegularContainerScreen(), ); } 
@override Widget build(BuildContext context) { return BlocBuilder<HomeRegularContainerBloc, HomeRegularContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.homeRegularPage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0), ), ), bottomNavigationBar: _buildBottomBar(context), ), );}, ); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}, ); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homeRegularPage; case BottomBarEnum.Report: return AppRoutes.reportsPage; case BottomBarEnum.Chatbot: return AppRoutes.chatBoardPage; case BottomBarEnum.Scan: return AppRoutes.scanPage; case BottomBarEnum.Account: return AppRoutes.myAccountPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.homeRegularPage: return HomeRegularPage.builder(context); case AppRoutes.reportsPage: return ReportsPage.builder(context); case AppRoutes.chatBoardPage: return ChatBoardPage.builder(context); case AppRoutes.scanPage: return ScanPage.builder(context); case AppRoutes.myAccountPage: return MyAccountPage.builder(context); default: return DefaultWidget();} } 
 }
