import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../generated/l10n.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:share_plus/share_plus.dart';
import '../../Components/Toast.dart';
import '../../Providers/SettingsProvider.dart';
import '../../Resources/Config.dart';
import '../../Utils/URLUtil.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).settings_title)),
      body: Center(
        child: Column(
            children: ListTile.divideTiles(context: context, tiles: [
          ListTile(
              title: Text(S.of(context).change_theme_mode_title),
              subtitle: Text(S.of(context).change_theme_mode_subtitle),
              trailing: FutureBuilder<int>(
                  future: _getThemeIndex(),
                  builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                    if (!snapshot.hasData) {
                      return Container(width: 0);
                    } else {
                      // return DropdownButton(items: items, onChanged: onChanged)
                      return DropdownButton<int>(
                          value: snapshot.data,
                          items: [
                            DropdownMenuItem(
                                value: 0,
                                child: Row(children: [
                                  const Icon(Icons.settings),
                                  Text(S.of(context).theme_mode_follow_system)
                                ])),
                            DropdownMenuItem(
                                value: 1,
                                child: Row(children: [
                                  const Icon(Icons.wb_sunny),
                                  Text(S.of(context).theme_mode_always_light)
                                ])),
                            DropdownMenuItem(
                                value: 2,
                                child: Row(children: [
                                  const Icon(Icons.shield_moon),
                                  Text(S.of(context).theme_mode_always_dark)
                                ]))
                          ],
                          onChanged: (value) {
                            if (value == null) return;
                            SettingsProvider().switchTheme(value);
                          });
                    }
                  })),
          ListTile(
            title: Text(S.of(context).share_title),
            subtitle: Text(S.of(context).share_subtitle),
            onTap: () async {
              Share.share(S.of(context).share_message);
            },
          ),
          ListTile(
              title: Text(S.of(context).report_title),
              subtitle: Text(S.of(context).report_subtitle),
              onTap: () async {
                await URLUtil.openUrl(Config.qqUrl, context);
              },
              onLongPress: () async {
                await Clipboard.setData(
                    const ClipboardData(text: Config.qqNumber));
                if (!mounted) return;
                Toast.showToast(S.of(context).report_copy_message, context);
              }),
          ListTile(
            title: Text(S.of(context).donate_title),
            subtitle: Text(S.of(context).donate_subtitle),
            onTap: () async {
              await URLUtil.openUrl(Config.donateUrl, context);
            },
          ),
          ListTile(
            title: Text(S.of(context).about_title),
            subtitle: FutureBuilder<String>(
                future: _getVersion(),
                builder:
                    (BuildContext context, AsyncSnapshot<String> snapshot) {
                  if (!snapshot.hasData) {
                    return Container();
                  } else {
                    return Text(S.of(context).now_version(snapshot.data!));
                  }
                }),
            onTap: () async {},
          ),
        ]).toList()),
      ),
    );
  }

  Future<int> _getThemeIndex() async {
    return await SettingsProvider().settings['themeMode'];
  }

  Future<String> _getVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }
}
