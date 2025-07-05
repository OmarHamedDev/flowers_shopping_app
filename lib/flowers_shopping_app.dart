import 'package:flowers_shopping_app/core/styles/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'config/localization/app_localizations.dart';
import 'config/routes/app_route.dart';

final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

class FlowersShoppingApp extends StatelessWidget {
  const FlowersShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Florena',
      theme: AppTheme.lightTheme,
      locale: Locale('en'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      navigatorKey: navKey,
      builder: EasyLoading.init(),
      onGenerateRoute: AppRoute.onGenerateRoute,
      initialRoute: '/',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flowers Shopping App')),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome to the Flowers Shopping App!',
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
