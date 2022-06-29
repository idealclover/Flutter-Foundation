import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'generated/l10n.dart';

import './Pages/HomePage/HomePageView.dart';
import './Providers/SettingsProvider.dart';
import './Resources/Constant.dart';
import './Resources/Themes.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
      theme: Themes.themeList[0]['light'],
      darkTheme: Themes.themeList[0]['dark'],
      themeMode:
          Constant.themeModeList[SettingsProvider().settings['themeMode']],
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
