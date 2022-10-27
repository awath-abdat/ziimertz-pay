import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cashcover/presentation/spash_screen_0two_screen/spash_screen_0two_screen.dart';
import 'package:cashcover/translations/codegen_loader.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(EasyLocalization(
      supportedLocales: [Locale("en"), Locale("ar")],
      path: "assets/translations",
      assetLoader: CodegenLoader(),
      fallbackLocale: Locale('en'),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Ziimertz Pay',
      home: SpashScreen0twoScreen(),
    );
  }
}
