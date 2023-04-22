import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/state_manager.dart';
import 'package:mvvm_starter/src/view_model/app_view_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.language),
      ),
      // body: Center(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       OutlinedButton(
      //         onPressed: () {
      //           context.read<AppViewModel>().setLocale(Locale('th'));
      //         },
      //         child: Text("TH"),
      //       ),
      //       OutlinedButton(
      //         onPressed: () {
      //           context.read<AppViewModel>().setLocale(Locale('en'));
      //         },
      //         child: Text("EN"),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
