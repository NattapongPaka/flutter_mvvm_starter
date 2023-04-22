import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mvvm_starter/src/l10n/l10n.dart';
import 'package:mvvm_starter/src/routes.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mvvm_starter/src/view/routes/app_pages.dart';
import 'package:mvvm_starter/src/view_model/app_view_model.dart';

import 'models/bindings/initial_binding.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus &&
                currentFocus.focusedChild != null) {
              FocusManager.instance.primaryFocus?.unfocus();
            }
          },
          child: GetMaterialApp(
            onInit: () {},
            initialBinding: InitialBinding(),
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            debugShowCheckedModeBanner: false,
            title: "Mvvm",
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            //home: splash(),
            initialRoute: AppPages.init,
            getPages: AppPages.routes,
          ),
        );
      },
    );
    // return MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(
    //       create: (_) => AppViewModel(),
    //       // builder: (ctx, child) {
    //       //   //final appViewModel = Provider.of<AppViewModel>(cont);
    //       //   final appViewModel = ctx.watch<AppViewModel>();
    //       //   return _buildMaterialApp(appViewModel);
    //       // },
    //     ),
    //   ],
    //   child: _buildMaterialApp(context),
    // );
  }

  // _buildMaterialApp(context) => Consumer<AppViewModel>(
  //       builder: (ctx, appViewModel, child) {
  //         return MaterialApp(
  //           // supportedLocales: L10n.all,
  //           // localizationsDelegates: [
  //           //   AppLocalizations.delegate,
  //           //   GlobalMaterialLocalizations.delegate,
  //           //   GlobalCupertinoLocalizations.delegate,
  //           //   GlobalWidgetsLocalizations.delegate
  //           // ],
  //           locale: appViewModel.local,
  //           supportedLocales: AppLocalizations.supportedLocales,
  //           localizationsDelegates: AppLocalizations.localizationsDelegates,
  //           theme: ThemeData(
  //             primarySwatch: Colors.blue,
  //           ),
  //           initialRoute: RoutePage.init,
  //           routes: Routes.router,
  //         );
  //       },
  //     );
}
