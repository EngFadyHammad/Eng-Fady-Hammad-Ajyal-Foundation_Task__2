import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/home_screen.dart';
import 'screens/onboarding_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? userName = prefs.getString('userName');

  runApp(MyApp(userName: userName));
}

class MyApp extends StatelessWidget {
  final String? userName;

  const MyApp({super.key, this.userName});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tudee',
      theme: ThemeData(useMaterial3: false),
      home: userName == null
          ? const OnboardingScreen()
          : HomeScreen(userName: userName!),
    );
  }
}
