import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mkr_flutter/utils/constant.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mkr_flutter/main.dart';

class DrawerNav extends StatelessWidget {
  const DrawerNav({
    super.key,
    // required this.navigatorKey,
  });

  // final GlobalKey<NavigatorState> navigatorKey;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: ListView(
        children: [
          const DrawerHeader(
            child: Image(
              image: AssetImage('images/MKR-logo-long-blue.png'),
            ),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.headphones,
              color: kMKRColorMain,
            ),
            title: const Text('Listen Now!'),
            onTap: () {
              Navigator.popAndPushNamed(context, Screen.home);
              // navigatorKey.currentState!.pushNamed(Screen.home);
            },
          ),
          const Divider(
            height: 20,
            thickness: 1,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
            child: Text('Content Hangat!'),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.earthAsia,
              color: kMKRColorMain,
            ),
            title: const Text('Laman Web'),
            onTap: () {
              Navigator.pop(context);
              launchUrl(Uri.parse('https://mykampusradio.com/'));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.mic,
              color: kMKRColorMain,
            ),
            title: const Text('Show Clip'),
            onTap: () {
              Navigator.pop(context);
              launchUrl(
                Uri.parse(
                  'https://www.youtube.com/channel/UChVS7qvjXYiPuqYNtiAPOWw',
                ),
              );
            },
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.youtube,
              color: kMKRColorMain,
            ),
            title: const Text('MyKampus TV'),
            onTap: () {
              Navigator.pop(context);
              launchUrl(
                Uri.parse(
                  'https://www.youtube.com/channel/UC0wQr4JFllCGu5lehj4gHGw',
                ),
              );
            },
          ),
          const Divider(
            height: 20,
            thickness: 1,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
            child: Text('Social Media'),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.facebook,
              color: kMKRColorMain,
            ),
            title: const Text('Facebook'),
            onTap: () {
              Navigator.pop(context);
              launch('https://www.facebook.com/mykampusradio/');
            },
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.twitter,
              color: kMKRColorMain,
            ),
            title: const Text('Twitter'),
            onTap: () {
              Navigator.pop(context);
              launch('https://twitter.com/mykampusradio');
            },
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.squareInstagram,
              color: kMKRColorMain,
            ),
            title: const Text('Instagram'),
            onTap: () {
              Navigator.pop(context);
              launch('https://www.instagram.com/mykampus_radio');
            },
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.tiktok,
              color: kMKRColorMain,
            ),
            title: const Text('TikTok'),
            onTap: () {
              Navigator.pop(context);
              launch('https://www.tiktok.com/@mykampus_radio');
            },
          ),
          const Divider(
            height: 20,
            thickness: 1,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
            child: Text('Hubungi Kami'),
          ),
          ListTile(
            leading: Icon(
              Icons.email_rounded,
              color: kMKRColorMain,
            ),
            title: const Text('Email'),
            onTap: () {
              Navigator.pop(context);
              launch(
                  'mailto:mykampusradio@gmail.com?subject=Pertanyaan&body=##%20Dihantar%20dari%20aplikasi%20MKR%20##');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.call,
              color: kMKRColorMain,
            ),
            title: const Text('Telephone'),
            onTap: () {
              Navigator.pop(context);
              launch('tel:+60395202595');
            },
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.squareWhatsapp,
              color: kMKRColorMain,
            ),
            title: const Text('WhatsApp'),
            onTap: () {
              Navigator.pop(context);
              launch('https://wa.me/60122970491');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.place,
              color: kMKRColorMain,
            ),
            title: const Text('Lokasi'),
            onTap: () {
              Navigator.pop(context);
              launch('https://goo.gl/maps/cjK65Rr6t2nw7aJE7');
            },
          ),
          const Divider(
            height: 20,
            thickness: 1,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
            child: Text('Extra'),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: kMKRColorMain,
            ),
            title: const Text('Settings'),
            onTap: () {
              Navigator.popAndPushNamed(context, Screen.settingsScreen);
              // navigatorKey.currentState!.pushNamed(Screen.settingsScreen);
            },
          ),
        ],
      ),
    );
  }
}

void _handleUrl(String url) async {
  final uri = Uri.tryParse(url);
  if (uri != null && await canLaunchUrl(uri)) {
    await launchUrl(uri);
  }
}
