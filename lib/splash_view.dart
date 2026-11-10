import 'package:flutter/material.dart';
import 'login_view.dart'; // سنقوم بتجهيزه لاحقاً

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
 @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const LoginView()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // شعار أو أيقونة التطبيق المؤقتة
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF9C27B0).withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.code,
                size: 80,
                color: Color(0xFF9C27B0),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Niqabii Coders',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'منصة برمجة وتصميم الطالبات',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFFE1BEE7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
