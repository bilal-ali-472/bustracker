// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:bustracker/counter/counter.dart';
import 'package:bustracker/l10n/l10n.dart';
import 'package:bustracker/routes/app_router.dart';
import 'package:bustracker/splash.dart';
import 'package:bustracker/student/homepage.dart';
import 'package:bustracker/student/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRouter().onGenerateRoute,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 243, 250, 253)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: SplashScreen(),
    );
  }
}
