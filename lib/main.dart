import 'package:flutter/material.dart';
import 'package:quiz_app/category_page.dart';
import 'package:quiz_app/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // ✅ Add this line
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/categories': (context) => const CategoryPage(),
      },
    );
  }
}
