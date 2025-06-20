import 'package:chatapp/screens/about.dart';
import 'package:chatapp/screens/help&support.dart';
import 'package:chatapp/screens/home_screen.dart';
import 'package:chatapp/screens/login_screen.dart';
import 'package:chatapp/screens/profile_screen.dart';
import 'package:chatapp/screens/register_screen.dart';
import 'package:chatapp/screens/setting.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://lsecnpdvnuyksptsmmhf.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxzZWNucGR2bnV5a3NwdHNtbWhmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDUwNzU5NDcsImV4cCI6MjA2MDY1MTk0N30.RxYsVeW2rmOCTvoyIHBXEaQx0n3VKILtdXeYPrYM3S4',
  );

  // WidgetsFlutterBinding.ensureInitialized();
 //  await Firebase.initializeApp(
 //    options: DefaultFirebaseOptions.currentPlatform,
 //  );
  runApp(const Chat());
}

class Chat extends StatelessWidget {
  const Chat({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      routes: {
      'LoginScreen': (context) => LoginScreen(),
      'RegisterScreen': (context) => RegisterScreen(),
      'HomeScreen': (context) => HomeScreen(),
      'ProfileScreen': (context) => ProfileScreen(),
      'Helpsupport': (context) => Helpsupport(),
      'About': (context) => About(),
      'Setting': (context) => Setting(),
      },
      initialRoute:'Setting',
    );
  }
}

