import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryPurple = Color(0xFFC788F9);
    const Color darkBackground = Color(0xFF0F0E13);
    const Color cardBg = Color(0xFFF1E4FF);

    return Scaffold(
      backgroundColor: cardBg,
      body: SafeArea(
        child: Column(
          children: [
            // 1. Header (Black Top Bar)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              color: darkBackground,
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 18,
                        backgroundColor: primaryPurple,
                        child: Icon(Icons.person, color: Colors.white, size: 20),
                      ),
                      const Expanded(
                        child: Text(
                          'Niqabii Coders',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Serif',
                          ),
                        ),
                      ),
                      const SizedBox(width: 36),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 38,
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            color: cardBg,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Row(
                            children: [
                              Text(
                                'Search here...',
                                style: TextStyle(color: Colors.purple, fontSize: 13),
                              ),
                              Spacer(),
                              Icon(Icons.search, color: Colors.purple, size: 20),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Icon(Icons.settings, color: primaryPurple, size: 26),
                    ],
                  ),
                ],
              ),
            ),

            // 2. Main Scrollable Content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Welcome Card
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: darkBackground,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          )
                        ],
                      ),
                      child: const Text(
                        'Welcome dear sister to your tech\nlearning and building team!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Cursive',
                          height: 1.4,
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Departments Section Header
                    const Text(
                      'Departments',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Departments Grid (8 Items)
                    GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 4,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 12,
                      children: const [
                        _DeptItem(icon: Icons.palette_outlined, label: 'Graphic\ndesign'),
                        _DeptItem(icon: Icons.play_circle_outline, label: 'Video\nEditing'),
                        _DeptItem(icon: Icons.motion_photos_on_outlined, label: 'Motion\nGraphics'),
                        _DeptItem(icon: Icons.directions_run_outlined, label: 'Stickman\nAnimation'),
                        _DeptItem(icon: Icons.language_outlined, label: 'Website\nbuilding'),
                        _DeptItem(icon: Icons.apps_outlined, label: 'Mobile app\nbuilding'),
                        _DeptItem(icon: Icons.memory_outlined, label: 'Computer\nScience'),
                        _DeptItem(icon: Icons.code_outlined, label: 'Software\nEngineering'),
                      ],
                    ),

                    const SizedBox(height: 24),

                    // Semester Schedule Header
                    Row(
                      children: [
                        const Text(
                          'Semester Schedule',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(child: Container(height: 1, color: Colors.grey.shade400)),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Semester Schedule Table
                    Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFF1E1428), Color(0xFF9055D3)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          // Days Row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: ['Sat', 'Sun', 'Mon', 'Tue', 'Wed', 'Thu']
                                .map((day) => Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Text(
                                        day,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ))
                                .toList(),
                          ),
                          const SizedBox(height: 12),
                          // Lesson Row
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Lesson', style: TextStyle(color: Colors.white70, fontSize: 10)),
                              Icon(Icons.check, color: Colors.black, size: 18),
                              Icon(Icons.check, color: Colors.black, size: 18),
                              Icon(Icons.check, color: Colors.black, size: 18),
                              Icon(Icons.check, color: Colors.black, size: 18),
                              Icon(Icons.check, color: Colors.black, size: 18),
                            ],
                          ),
                          const Divider(color: Colors.white24, height: 20),
                          // Activity Row
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Activity', style: TextStyle(color: Colors.white70, fontSize: 10)),
                              SizedBox(width: 18),
                              Icon(Icons.check, color: Colors.black, size: 18),
                              SizedBox(width: 18),
                              Icon(Icons.check, color: Colors.black, size: 18),
                              SizedBox(width: 18),
                              Icon(Icons.check, color: Colors.black, size: 18),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Floating Assistant Button Option
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: const Color(0xFF6B2CB3),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.black,
                              child: Icon(Icons.headset, color: Colors.purpleAccent, size: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // 3. Bottom Navigation Bar (Black)
            Container(
              color: darkBackground,
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _NavItem(icon: Icons.home, label: 'Home', isSelected: true),
                  _NavItem(icon: Icons.keyboard_double_arrow_up, label: 'Progress'),
                  _NavItem(icon: Icons.bar_chart, label: 'Leaderboard'),
                  _NavItem(icon: Icons.person_outline, label: 'Profile'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DeptItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _DeptItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: const Color(0xFF7A20C2), size: 28),
        const SizedBox(height: 4),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 10, color: Colors.black87),
        ),
      ],
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;

  const _NavItem({
    required this.icon,
    required this.label,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: isSelected ? Colors.white : Colors.white60,
          size: 24,
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.white60,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
