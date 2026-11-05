import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'views/splash_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // تهيئة Supabase بالرابط والمفتاح الخاص بمشروعك
  await Supabase.initialize(
    url: 'ضع_رابط_supabase_هنا',
    anonKey: 'ضع_مفتاح_anon_هنا',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Niqabii Coders',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF9C27B0), // اللون الأرجواني المتفق عليه
          secondary: Color(0xFFE1BEE7),
        ),
      ),
      home: const SplashView(),
    );
  }
}
