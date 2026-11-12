import 'package:flutter/material.dart';

class ProgressView extends StatelessWidget {
  const ProgressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3E8FF), // خلفية بنفسجية فاتحة هادئة
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1B24),
        title: const Text(
          'Niqabii Coders Progress',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // بطاقة الترحيب والتقدم العام
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF9333EA), Color(0xFFC084FC)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'مرحباً بكِ في مساركِ البرمجي 💜',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'أنتِ تقودين مشروعكِ نحو القمة بخطوات ثابتة.',
                    style: TextStyle(color: Colors.white70, fontSize: 13),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            
            // قائمة الأقسام والتقدم
            _buildProgressItem('Graphic Design', 0.8),
            _buildProgressItem('Video Editing', 0.5),
            _buildProgressItem('Motion Graphics', 0.3),
            _buildProgressItem('Website Building', 0.6),
            _buildProgressItem('Mobile App Building', 0.2),
            _buildProgressItem('Computer Science', 0.9),
            _buildProgressItem('Software Engineering', 0.4),
          ],
        ),
      ),
    );
  }

  // عنصر مساعد لتصميم شريط التقدم لكل قسم
  Widget Widget _buildProgressItem(String title, double progress) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.purple.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Color(0xFF2D1537),
            ),
          ),
          const SizedBox(height: 8),
          LinearProgressIndicator(
            value: progress,
            backgroundColor: const Color(0xFFF3E8FF),
            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF9333EA)),
            minHeight: 6,
          ),
        ],
      ),
    );
  }
}
