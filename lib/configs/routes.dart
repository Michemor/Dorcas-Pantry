import 'package:dorcas_pantry/views/screens/dashboard.dart';
import 'package:dorcas_pantry/views/screens/login.dart';
import 'package:dorcas_pantry/views/screens/register.dart';
import 'package:get/route_manager.dart';

List <GetPage> routes = [
  GetPage(name: '/', page: () => Login()),
  GetPage(name: '/register', page: () => Register()),
  GetPage(name: '/dashboard', page: () => Dashboard()),
];