import 'package:flutter/widgets.dart';

class RootNavigationKeys {
  static const onboarding = "/onboarding";
  static const main = "/main";
}

class ListNavigationKeys {
  static const list = "/schedule";
}

class MapNavigationKeys {
  static const map = "/map";
  static const mapDetail = "/map/detail";
}

class NavigatorKeys {
  static final GlobalKey<NavigatorState> app = GlobalKey();
  static final GlobalKey<NavigatorState> root = GlobalKey();
  static final GlobalKey<NavigatorState> list = GlobalKey();
  static final GlobalKey<NavigatorState> map = GlobalKey();
}
