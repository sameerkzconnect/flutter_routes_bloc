import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_routes_bloc/routes/routes_app.dart';
void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    onGenerateTitle: (context) =>  AppLocalizations.of(context)!.appTitle,
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    onGenerateRoute: AppRoutes().generatedRoutes,
    initialRoute:  routeHome,
  ));
}

