import 'view/screens/index.dart';

class RoutePage {
  RoutePage._();

  static final init = "/";
  static final home = "/home";
}

class Routes {
  Routes._();

  static final router = {
    RoutePage.init: (context) => HomeScreen(),
  };
}
