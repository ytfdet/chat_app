import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.3,
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(16),
                  //   color: const Color(0xFF45404a),
                  // ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.arrow_back_ios, size: 24),
                              color: Colors.black,
                              onPressed: () {},
                            ),
                            const Spacer(),
                            const Text(
                              'الملف الشخصي',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            Image.asset(
                              'assets/images/Screenshot 2025-04-07 151208.png',
                              height: 40,
                            ),
                          ],
                        ),
                      ),

                      Center(
                        child: CircleAvatar(
                          radius: 75,
                          backgroundImage: AssetImage(
                            'assets/images/Chat-lab-bubble-logo-white-background-not-tail.mXlmTIlh.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                 // height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xFF45404a),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        CraftInfoItem(Icons.person, 'الإسم', 'خالد رضا'),
                        Divider(height: 40),
                        CraftInfoItem(Icons.work_outlined, 'المهنه', 'سباك'),
                        Divider(height: 40),
                        CraftInfoItem(Icons.phone, 'رقم الهاتف', '01023469761'),
                        Divider(height: 40),
                        CraftInfoItem(
                          Icons.email,
                          'البريد الالكتروني',
                          'zz@gmail.com',
                        ),
                        Divider(height: 40),
                        Row(
                          children: [
                            Icon(Icons.settings_outlined, color: Colors.white),
                            SizedBox(width: 16),
                            Text(
                              'الإعدادات',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Divider(height: 40),
                        Row(
                          children: [
                            Icon(Icons.logout, color: Colors.white),
                            SizedBox(width: 16),
                            Text(
                              'تسجيل الخروج',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget CraftInfoItem(IconData icon, String title, String value) {
    return Row(
      children: [
        Icon(icon, color: Colors.white),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(color: Colors.white, fontSize: 14)),
            const SizedBox(height: 4),
            Text(
              value,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}


