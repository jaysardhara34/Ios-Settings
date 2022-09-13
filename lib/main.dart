import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:settings/screen/home/provider/settingsProviderAnd.dart';
import 'package:settings/screen/home/provider/settingsProviderIos.dart';
import 'package:settings/screen/home/view/settingsAnd.dart';
import 'package:settings/screen/home/view/settingsIos.dart';

void main() {
  runApp(
    ios(),
  );
  return SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(systemNavigationBarColor: CupertinoColors.black));
}

Widget android() {
  return ChangeNotifierProvider(
    create: (context) => settingsProviderAnd(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => AndSettings(),
      },
    ),
  );
}

Widget ios() {
  return ChangeNotifierProvider(
    create: (context) => settingsProviderIos(),
    child: CupertinoApp(
      debugShowCheckedModeBanner: false,
      routes: {'/': (context) => IosSettings()},
    ),
  );
}
