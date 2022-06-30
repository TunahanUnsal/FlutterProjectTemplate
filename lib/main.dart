import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_project_template/views/home/view/home_view.dart';
import 'package:page_transition/page_transition.dart';
import 'core/init/navigation/navigation_route.dart';
import 'core/init/navigation/navigation_service.dart';
import 'l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
      scaffoldBackgroundColor: const Color(0xff000000),
      unselectedWidgetColor: Colors.white),
  home: const MyApp(),
  supportedLocales: L10n.all,
  navigatorKey: NavigationService.instance.navigatorKey,
  onGenerateRoute: NavigationRoute.instance.generateRoute,
  localizationsDelegates: [
    AppLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate
  ],
));

class MyApp extends StatefulWidget {
  const MyApp({Key ?key}) : super(key: key);

  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<MyApp> {

  bool login = true;

  @override
  void initState() {
    super.initState();
    startCountDown(context);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return Scaffold(
      body: Center(
        child: Text(AppLocalizations.of(context)!.welcome,style: TextStyle(color: Colors.white),),
      )
    );
  }

  void startCountDown(context) {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(context,  PageTransition(type: PageTransitionType.fade, child: const HomeView()));
    });

  }
}
