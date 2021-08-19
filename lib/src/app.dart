import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mvvm_starter/src/l10n/l10n.dart';
import 'package:mvvm_starter/src/routes.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mvvm_starter/src/view_model/app_view_model.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AppViewModel(),
          // builder: (ctx, child) {
          //   //final appViewModel = Provider.of<AppViewModel>(cont);
          //   final appViewModel = ctx.watch<AppViewModel>();
          //   return _buildMaterialApp(appViewModel);
          // },
        ),
      ],
      child: _buildMaterialApp(context),
    );
  }

  _buildMaterialApp(context) => Consumer<AppViewModel>(
        builder: (ctx, appViewModel, child) {
          return MaterialApp(
            // supportedLocales: L10n.all,
            // localizationsDelegates: [
            //   AppLocalizations.delegate,
            //   GlobalMaterialLocalizations.delegate,
            //   GlobalCupertinoLocalizations.delegate,
            //   GlobalWidgetsLocalizations.delegate
            // ],
            locale: appViewModel.local,
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            initialRoute: RoutePage.init,
            routes: Routes.router,
          );
        },
      );
}
