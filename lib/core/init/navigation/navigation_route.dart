//          Code with 🥂
//  ┌─────────────────────────────────┐
//  │     Created by Tuna UNSAL       │
//  │ ─────────────────────────────── │
//  │ tunahan.unsal@eczacibasi.com.tr │            
//  │ ─────────────────────────────── │
//  │        23.06.2022  10:28        │
//  └─────────────────────────────────┘

import 'package:flutter/material.dart';
import 'package:vitra_smart_remote/views/home/view/home_view.dart';
import 'package:vitra_smart_remote/views/test/view/test_view.dart';
import '../../../main.dart';
import '../../constant/navigation/navigation_constants.dart';


class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.DEFAULT:
        return normalNavigate(MyApp(), NavigationConstants.DEFAULT);

      case NavigationConstants.HOME_VIEW:
        return normalNavigate(HomeView(), NavigationConstants.HOME_VIEW);

      case NavigationConstants.TEST_VIEW:
        return normalNavigate(TestView(), NavigationConstants.TEST_VIEW);

      default:
        return normalNavigate(MyApp(), NavigationConstants.DEFAULT);

    }
  }

  MaterialPageRoute normalNavigate(Widget widget, String pageName) {
    return MaterialPageRoute(
        builder: (context) => widget,
        settings: RouteSettings(name: pageName));
  }
}