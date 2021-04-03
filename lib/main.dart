import 'package:bet_trends/pages/cguv.dart';
import 'package:bet_trends/pages/faq.dart';
import 'package:bet_trends/pages/home.dart';
import 'package:bet_trends/pages/legal_notices.dart';
import 'package:bet_trends/pages/privacy_policy.dart';
import 'package:bet_trends/pages/terms_of_use.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en', 'GB'), Locale('fr')],
      path: "assets/translations",
      fallbackLocale: Locale('en', 'GB'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Bet Trends - 1er outil automatisé d\'analyse de paris sportifs',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(34, 191, 160, 1),
        fontFamily: 'Montserrat',
        // color: Color.fromRGBO(122, 122, 122, 1), gray colour
      ),
      home: Home(),
      routes: {
        '/home': (ctx) => Home(),
        '/faq': (ctx) => FAQ(),
        '/legal_notices': (ctx) => LegalNotices(),
        '/privacy_policy': (ctx) => PrivacyPolicy(),
        '/terms_of_use': (ctx) => TermsOfUse(),
        '/cguv': (ctx) => CGUV(),
      },
    );
  }
}
