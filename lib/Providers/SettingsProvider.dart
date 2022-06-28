import 'package:flutter/foundation.dart';

class SettingsProvider with ChangeNotifier {
  SettingsProvider();

  Map _settingData = {
    "themeMode": 2
  };

  Map get settings {
    return _settingData;
  }

  set setting(Map settingData) {
    _settingData = settingData;
    saveSettings();
    notifyListeners();
  }

  saveSettings() {
    // DunPreferences()
    //     .saveString(key: "settingData", value: settingDataToJson(_settingData));
    notifyListeners();
  }

  readAppSetting() async {
    // String data = await DunPreferences().getString(key: "settingData");
    // if (data != "") {
    //   _settingData = settingDataFromJson(data);
    //   notifyListeners();
    // }
  }
}
