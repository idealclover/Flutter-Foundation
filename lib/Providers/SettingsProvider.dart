import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

import '../Resources/Constant.dart';

class SettingsProvider {
  final _box = GetStorage();
  final _key = 'settings';
  final _defaultSettings = {
    "themeMode": 0
  };

  /// Get settings from local storage
  Map get settings => _loadSettingsFromBox();

  /// Load settings from local storage and if it's empty, returns default
  Map _loadSettingsFromBox() => _box.read(_key) ?? _defaultSettings;

  /// Save settings to local storage
  _saveSettingsToBox(Map settings) => _box.write(_key, settings);

  /// Switch theme and save to local storage
  void switchTheme(int value) {
    Get.changeThemeMode(Constant.themeModeList[value]);
    Map settings = _loadSettingsFromBox();
    settings['themeMode'] = value;
    print(settings);
    _saveSettingsToBox(settings);
  }
}