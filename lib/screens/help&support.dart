import 'package:flutter/material.dart';



class Helpsupport extends StatelessWidget {
  const Helpsupport({super.key});

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
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/Screenshot 2025-04-07 151208.png',
                        height: 40,
                      ),
                      Spacer(),
                      Text(
                        'المساعدة والدعم',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),

                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      Center(
                        child: Container(
                          width: double.infinity,
                          height: 685,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                          ),
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'اسئله حول طلب الخدمات',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    'كيف أرسل طلب خدمة جديد؟'
                                    ' \n'
                                    ' تقوم باختيار نوع الخدمه ثم تقوم بملئ الإستماره الموجوده ثم ترسلها'
                                    ' \n  '
                                    '****************************',
                                  ),
                                  Text(
                                    ' ما هي أنواع الخدمات المتاحة؟'
                                    '\n'
                                    'حاليا الخدمات المتاحه هى(السباكه-النجاره- الكهرباء-التشطيبات)'
                                    '\n'
                                    '****************************',
                                  ),
                                  Text(
                                    ''
                                    'كيف أصف المشكلة بشكل فعال في النموذج؟'
                                    '                                            '
                                    'تقوم بوصف المشكله باللغه العاميهه بشكل مفصل '
                                    '\n'
                                    '****************************',
                                  ),
                                  Text(
                                    'هل يمكنني إرفاق صور مع الطلب؟'
                                    '                                          '
                                    'يمكنك ارفاق اكثر من صوره مع الطلب '
                                    '\n'
                                    '**************************** ',
                                  ),
                                  Text(
                                    'كيف أعرف أن طلبي وصل للحرفيين؟'
                                    '\n'
                                    'فى صفحه الشعارات ستجد طلبك وستجد الحاله الخاصه بالطلب '
                                    '\n'
                                    '****************************',
                                  ),
                                  Text(
                                    'كم من الوقت يستغرق حتى أحصل على عروض؟'
                                    '              \n'
                                    'يكون فى اسرع وقت ممكن بعد قبول طلبك من العديد من الصنايعيه '
                                    '\n'
                                    '****************************',
                                  ),
                                  Text(
                                    'ماذا يحدث بعد قبول العرض؟'
                                    '\n'
                                    'تقوم بتحديد ميعاد مناسب للعميل والصنايعى لكى يقوم الصنايعى بحل مشكلتك '
                                    '\n'
                                    '****************************',
                                  ),
                                  Text(
                                    'كيف أقوم بتقييم الخدمة والحرفي بعد الانتهاء؟'
                                    '\n'
                                    'بعد إنتهاء الصنايعيى من العمل الخاص بالعميل يقوم العميل بالدخول الى بروفايل الصنايعى وتقييمه من خلال عدد النجوم ومن خلال كتابه تعليق '
                                    '\n'
                                    '****************************',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
