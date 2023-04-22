import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';
import 'package:mvvm_starter/src/l10n/l10n.dart';

class AppViewModel extends GetxController {
  Locale? _locale;

  Locale? get local => _locale;

  var _a = Rxn();

  void setLocale(Locale locale) {
    if (!L10n.all.contains(locale)) return;

    _locale = locale;
    update();
  }

  void clearLocale() {
    _locale = null;
    update();
  }
}
