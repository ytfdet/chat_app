import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Card(
            color: const Color(0xFF45404a),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        //'assets/images/Screenshot 2025-04-07 151208.png',
                        'assets/images/logo.png',
                        height: 40,

                      ),
                      Spacer(),
                      Text(
                        'الإعدادات',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                  const SizedBox(height: 70),

                  buildContainer(Icons.person_2_outlined,'الحساب الشخصى',ontap: (){
                    Navigator.pushNamed(context, 'Helpsupport');
                  }),
                  SizedBox(height: 35),
                  buildContainer(Icons.notifications_none_outlined,'الإشعارات',),
                  SizedBox(height: 35),
                  buildContainer(Icons.support_agent_outlined,'المساعده و الدعم',),
                  SizedBox(height: 35),
                  buildContainer(Icons.info_outlined,'حول',),
                  SizedBox(height: 35),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildContainer(IconData iconstart, String title, {void Function()? ontap}) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(iconstart),
              // Spacer(),
              SizedBox(width: 12),
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),

              //SizedBox.shrink(),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_outlined)),
            ],
          ),
        ),
      ),
    );
  }
}
