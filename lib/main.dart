
import 'package:dorcas_pantry/views/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/route_manager.dart';

void main() {
  /**WidgetsBinding bindings = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: bindings); */
  runApp(const MainApp());
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      home:  Login(),
    );
  }
}
