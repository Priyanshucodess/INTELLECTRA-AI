import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:intellectra_ai/helper/global.dart';
import 'package:intellectra_ai/helper/pref.dart';

import 'package:intellectra_ai/screen/splash_screen.dart';


Future<void> main() async {

  Gemini.init(apiKey: GEMINI_API_KEY);

  WidgetsFlutterBinding.ensureInitialized();
  // init Hive database
  Pref.initialize();
 
 

  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}