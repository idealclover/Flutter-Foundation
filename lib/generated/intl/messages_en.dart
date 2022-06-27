// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(version) => "Now version v${version}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_title": MessageLookupByLibrary.simpleMessage("About"),
        "appName": MessageLookupByLibrary.simpleMessage("Flutter Base APP"),
        "change_theme_mode_subtitle":
            MessageLookupByLibrary.simpleMessage("Follow system theme?"),
        "change_theme_mode_title":
            MessageLookupByLibrary.simpleMessage("Mode Change"),
        "donate_subtitle":
            MessageLookupByLibrary.simpleMessage("Buy me a cup of coffee!"),
        "donate_title": MessageLookupByLibrary.simpleMessage("Donate"),
        "now_version": m0,
        "report_subtitle": MessageLookupByLibrary.simpleMessage(
            "Any bugs? Talk to us on Tencent QQ!\nTap to open QQ，long press to copy number."),
        "report_title": MessageLookupByLibrary.simpleMessage("Report"),
        "settings_title": MessageLookupByLibrary.simpleMessage("Settings"),
        "share_subtitle": MessageLookupByLibrary.simpleMessage(
            "Share this app to more friends!"),
        "share_title": MessageLookupByLibrary.simpleMessage("Share"),
        "theme_mode_always_dark":
            MessageLookupByLibrary.simpleMessage("Always Dark"),
        "theme_mode_always_light":
            MessageLookupByLibrary.simpleMessage("Always Light"),
        "theme_mode_follow_system":
            MessageLookupByLibrary.simpleMessage("Follow System")
      };
}
