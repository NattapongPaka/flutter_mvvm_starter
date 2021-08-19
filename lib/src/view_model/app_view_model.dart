import 'package:flutter/material.dart';
import 'package:mvvm_starter/src/l10n/l10n.dart';

class AppViewModel extends ChangeNotifier {
  Locale? _locale;

  Locale? get local => _locale;

  void setLocale(Locale locale) {
    if (!L10n.all.contains(locale)) return;

    _locale = locale;
    notifyListeners();
  }

  void clearLocale() {
    _locale = null;
    notifyListeners();
  }
}
