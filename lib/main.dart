import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dictionary/page/home/home_navigator.dart';
import 'package:flutter_dictionary/page/splash_page.dart';
import 'package:flutter_dictionary/util/app_constant.dart';

void main() {
  runApp(Dictionary());
}

class Dictionary extends StatefulWidget {
  @override
  _DictionaryState createState() => _DictionaryState();
}

class _DictionaryState extends State<Dictionary> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstant.appName,
      initialRoute: AppConstant.pageSplash,
      routes: {
        AppConstant.pageSplash: (context) => SplashPage(),
        AppConstant.pageHome: (context) => HomeNavigator(),
      },
    );
  }
}
