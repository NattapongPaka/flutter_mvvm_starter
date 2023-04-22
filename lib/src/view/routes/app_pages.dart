import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:mvvm_starter/src/view/screens/loading/splash_screen.dart';

class AppPages {
  static const init = '/';

  static final routes = [
    GetPage(
      name: '/',
      page: () => SplashScreen(),
    ),
    // GetPage(
    //   name: AppRoutes.introductionScreen,
    //   page: () => introductionScreen(),
    // ),
    // GetPage(
    //   name: AppRoutes.privacy,
    //   page: () => privacySetting(
    //     showButtonGo: Get.arguments,
    //   ),
    // ),
    // GetPage(
    //   name: AppRoutes.term,
    //   page: () => termSetting(),
    // ),
    // GetPage(
    //   name: AppRoutes.myBookingDetail,
    //   page: () => myBookingDetail(),
    // ),
    // GetPage(
    //   name: AppRoutes.information,
    //   page: () => information(),
    // ),
    // GetPage(
    //   name: AppRoutes.editProfile,
    //   page: () => editProfile(),
    // ),
    // GetPage(
    //   name: AppRoutes.settingJob,
    //   page: () => settingJob(),
    // ),
    // GetPage(
    //   name: AppRoutes.notification,
    //   page: () => notification(),
    // ),
    // GetPage(
    //   name: AppRoutes.imageView,
    //   page: () => ImageViewScreen(
    //     photoViewArg: Get.arguments,
    //   ),
    // ),
    // GetPage(
    //   name: AppRoutes.chat,
    //   page: () => chat(),
    //   binding: ChatBinding(),
    // ),
    // GetPage(
    //   name: AppRoutes.promotionDetail,
    //   page: () => promotionDetail(Get.arguments),
    // ),
    // GetPage(
    //   name: AppRoutes.summaryIncome,
    //   page: () => summaryIncome(Get.arguments),
    // ),
    // GetPage(
    //   name: AppRoutes.locationLoading,
    //   page: () => locationLoading(),
    //   //binding: HomeBinding(),
    // ),
    // GetPage(
    //   name: AppRoutes.bottomBar,
    //   page: () => bottomBar(
    //     valueSelectedIndex: Get?.arguments ?? 0,
    //   ),
    //   fullscreenDialog: true,
    //   bindings: [
    //     HomeBinding(),
    //     ActivityBinding(),
    //     IncomeBinding(),
    //     ProfileBinding(),
    //     NotiBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: AppRoutes.forgotPassword,
    //   page: () => forgotPassword(),
    // ),
    // GetPage(
    //   name: AppRoutes.success,
    //   page: () => success(
    //     status: Get.arguments,
    //   ),
    // ),
    // GetPage(
    //   name: AppRoutes.sign,
    //   page: () => sign(status: Get.arguments),
    // ),
    // GetPage(
    //   name: AppRoutes.createNewPass,
    //   page: () => createNewPass(),
    // ),
    // GetPage(
    //   name: AppRoutes.paymentWallet,
    //   page: () => paymentWallet(),
    // ),
    // GetPage(
    //   name: AppRoutes.successChecking,
    //   page: () => successChecking(
    //     status: Get.arguments,
    //   ),
    // ),
    // GetPage(
    //   name: AppRoutes.topupView,
    //   page: () {
    //     var topupMethod = Get.arguments["topupMethod"];
    //     var topupModel = Get.arguments["topupModel"];
    //     return TopUpView(topupMethod, topupModel);
    //   },
    // ),
    // GetPage(
    //   name: AppRoutes.findCustomerWait,
    //   page: () => findCustomerWait(
    //     serviceCatId: Get.arguments,
    //   ),
    //   customTransition: MySlideTransition(),
    // ),
    // GetPage(
    //   name: AppRoutes.goToFindCustomer,
    //   page: () {
    //     return goToFindCustomer(status: Get.arguments);
    //   },
    //   customTransition: MySlideTransition(),
    //   // binding: HomeBinding(),
    // ),
    // GetPage(
    //   name: AppRoutes.goToFindCustomerSlide,
    //   page: () {
    //     return goToFindCustomerSlide();
    //   },
    //   customTransition: MySlideTransition(),
    //   // binding: HomeBinding(),
    // ),
    // GetPage(
    //   name: AppRoutes.reportOrder,
    //   page: () {
    //     return reportOrder();
    //   },
    //   customTransition: MySlideTransition(),
    // ),
    // GetPage(
    //   name: AppRoutes.cancelService,
    //   page: () {
    //     return cancelService();
    //   },
    //   customTransition: MySlideTransition(),
    // ),
    // GetPage(
    //   name: AppRoutes.jobOrder,
    //   page: () {
    //     var _bookingId = Get.arguments["bookingId"];
    //     var _status = Get.arguments["status"];
    //     return jobOrder(
    //       status: _status,
    //       bookindId: _bookingId,
    //     );
    //   },
    //   customTransition: MySlideTransition(),
    // ),
    // GetPage(
    //   name: AppRoutes.otp,
    //   page: () {
    //     var isForgotPass = Get.arguments;
    //     return otp(
    //       forgotPass: isForgotPass,
    //     );
    //   },
    // ),
    // GetPage(
    //   name: AppRoutes.login,
    //   page: () => login(),
    //   binding: AuthBinding(),
    //   middlewares: [
    //     RouteAuthMiddleware(),
    //   ],
    // ),
  ];
}
