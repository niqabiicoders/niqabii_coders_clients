import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'splash_view.dart'; // تأكدي أن المسار يطابق مكان الملف

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // سنقوم بتفعيل سوبابيس هنا لاحقاً
  // await Supabase.initialize(url: '...', anonKey: '...');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Niqabii Coders',
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
