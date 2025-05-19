import 'package:awesome_notification_firebase/firebase_options.dart';
import 'package:awesome_notification_firebase/screens/home_screen.dart';
import 'package:awesome_notification_firebase/screens/login.dart';
import 'package:awesome_notification_firebase/screens/register.dart';
import 'package:awesome_notification_firebase/screens/second_screen.dart';
import 'package:awesome_notification_firebase/services/notification_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await NotificationService.initializeNotification();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'login',
      routes: {
        'home': (context) => const HomeScreen(),
        'login': (context) => const LoginScreen(),
        'register': (context) => const RegisterScreen(),
        'second': (context) => const SecondScreen(),
      },
      navigatorKey: navigatorKey,
    );
  }
}
