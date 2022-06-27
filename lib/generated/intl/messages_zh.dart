// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'zh';

  static String m0(version) => "当前版本 v${version}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_title": MessageLookupByLibrary.simpleMessage("关于"),
        "appName": MessageLookupByLibrary.simpleMessage("Flutter Base APP"),
        "change_theme_mode_subtitle":
            MessageLookupByLibrary.simpleMessage("是否跟随系统切换模式"),
        "change_theme_mode_title":
            MessageLookupByLibrary.simpleMessage("浅色/深色模式切换"),
        "donate_subtitle": MessageLookupByLibrary.simpleMessage("给傻翠买支棒棒糖吧！"),
        "donate_title": MessageLookupByLibrary.simpleMessage("投喂"),
        "now_version": m0,
        "report_subtitle": MessageLookupByLibrary.simpleMessage(
            "有什么bug或建议请告诉我们吧！\n轻触打开QQ，长按复制号码"),
        "report_title": MessageLookupByLibrary.simpleMessage("反馈"),
        "settings_title": MessageLookupByLibrary.simpleMessage("设置"),
        "share_subtitle":
            MessageLookupByLibrary.simpleMessage("把南哪课表分享给更多小伙伴吧！"),
        "share_title": MessageLookupByLibrary.simpleMessage("分享此应用"),
        "theme_mode_always_dark": MessageLookupByLibrary.simpleMessage("深色模式"),
        "theme_mode_always_light": MessageLookupByLibrary.simpleMessage("浅色模式"),
        "theme_mode_follow_system": MessageLookupByLibrary.simpleMessage("跟随系统")
      };
}
