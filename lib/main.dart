import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';
import 'package:provider/provider.dart';

import './Pages/HomePage/HomePageView.dart';
import './Providers/SettingsProvider.dart';
import './Resources/Constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<SettingsProvider>(
              create: (_) => SettingsProvider())
        ],
        child:
            Consumer<SettingsProvider>(builder: (context, settingsProvider, _) {
          return MaterialApp(
            title: 'Flutter Base APP',
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            locale: const Locale('zh', ''),
            localeListResolutionCallback: (locales, supportedLocales) {
              print('当前系统语言环境$locales');
              return;
            },
            theme: ThemeData(
                colorSchemeSeed: Colors.blue, brightness: Brightness.light),
            darkTheme: ThemeData(
                colorSchemeSeed: Colors.blue, brightness: Brightness.dark),
            themeMode:
                Constant.themeModeList[settingsProvider.settings['themeMode']],
            home: const MyHomePage(title: 'Flutter Demo Home Page'),
          );
        }));
  }
}
