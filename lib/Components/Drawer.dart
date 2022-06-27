import 'package:flutter/material.dart';
import 'package:baseapp/Pages/Settings/SettingsView.dart';

class MDrawer extends StatelessWidget {
  const MDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const info = {
      "title": "idealclover",
      "link": "https://icl.moe",
      "avatar": "https://idealclover.top/icon.jpg",
      "bgimg":
          "http://pic.netbian.com/uploads/allimg/190510/221228-15574975489aa1.jpg"
    };
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero, // padding为0
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(info['title'] ?? '',
                style: const TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text(info['link'] ?? ''),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(info['avatar'] ?? ''),
            ),
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    image: NetworkImage(info['bgimg'] ?? ''),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            title: const Text('首页'),
            trailing: const Icon(Icons.home),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: const Text('设置'),
            trailing: const Icon(Icons.settings),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => const SettingsView())),
          ),
        ],
      ),
    );
  }
}
