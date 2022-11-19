import 'dart:async';
import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:puzzle9to6/features/splash/splash_view.dart';

import 'core/utils/router/app_router.dart';

import 'injection/injection_container.dart' as di;
import 'shared/app_theme.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

Future<void> main() async {
  runZonedGuarded(() async {
    await ScreenUtil.ensureScreenSize();
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();

    await di.configureDependencies();
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.presentError(details);
    };
    runApp(
      _Puzzle9to6(),
    );
  }, (Object error, StackTrace stack) {
    log('Error: $error', name: 'FMain');
  });
}

class _Puzzle9to6 extends StatelessWidget {
  _Puzzle9to6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //* Initialize the screen util (using this for responsive thing)
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashView(),
        navigatorKey: AppRouter().mainNavigatorKey,
        theme: ThemeData(
          primaryColor: AppTheme().primaryColor,
          secondaryHeaderColor: AppTheme().secondaryColor,
          accentColor: AppTheme().primaryColor,
        ),
        builder: (context, widget) {
          ScreenUtil.init(context);
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
      ),
    );
  }
}
