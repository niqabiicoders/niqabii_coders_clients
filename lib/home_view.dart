import 'package:flutter/material.dart';
import 'supabase_service.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('منصة Niqabii Coders'),
        backgroundColor: const Color(0xFF9C27B0),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              // تسجيل الخروج
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'أهلاً بكِ في عالم البرمجة، إلهام 🌸',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 10),
            const Text(
              'اختر مساركِ البرمجي وابدئي التطوير الآن:',
              style: TextStyle(color: Color(0xFFE1BEE7)),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildDashboardCard(Icons.code, 'دروس Flutter', 'تطبيقات عملية'),
                  _buildDashboardCard(Icons.storage, 'قواعد البيانات', 'Supabase & SQL'),
                  _buildDashboardCard(Icons.design_services, 'تصميم الواجهات', 'UI/UX Guidelines'),
                  _buildDashboardCard(Icons.card_membership, 'اشتراكي', 'الباقة الكاملة للأبد'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboardCard(IconData icon, String title, String subtitle) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF9C27B0), width: 1.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: const Color(0xFF9C27B0)),
          const SizedBox(height: 12),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
          const SizedBox(height: 4),
          Text(subtitle, style: const TextStyle(fontSize: 12, color: Color(0xFFE1BEE7))),
        ],
      ),
    );
  }
}
