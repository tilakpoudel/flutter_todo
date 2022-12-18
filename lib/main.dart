import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_locales/flutter_locales.dart';
import './screens/home.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Locales.init(['en', 'ne',]); // get last saved language
  // remove await if you want to get app default language

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return LocaleBuilder(
      builder: (locale) => MaterialApp(
        localizationsDelegates: Locales.delegates,
        supportedLocales: Locales.supportedLocales,
        locale: locale,
        debugShowCheckedModeBanner: false,
        title: 'ToDO App',
        home: Home(),
      ),
    );
  }
}
