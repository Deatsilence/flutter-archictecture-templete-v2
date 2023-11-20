import 'package:architecture_templete_v2/feature/home/view/home_view.dart';
import 'package:architecture_templete_v2/product/init/application_initialize.dart';
import 'package:architecture_templete_v2/product/init/product_localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await ApplicationInitialize().make();
  runApp(
    ProductLocalization(
      child: const MyApp(),
    ),
  );
}

/// Start of the app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Material App',
      home: const HomeView(),
    );
  }
}
