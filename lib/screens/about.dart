import 'package:flutter/material.dart';
class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
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
                        'About TradeCraft',
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
                      Container(
                        width: double.infinity,
                        height: 680,
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
                                  'بوابتك الموثوقة لخدمات الصيانة والتشطيبات المنزلية.'
                           ' أفضل الحرفيين، بلمسة زر .'
                           '\n  منزلك في أيد أمينة .'
                             '\n****************************',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),

                              ),
                                Text(
                                  'وصف موجز:'
                                      '\n'
                                  'TradeCraft System هو تطبيق رائد يربطك مباشرةً بأفضل الحرفيين المتخصصين في السباكة، النجارة، الكهرباء، الدهانات، وخدمات تشطيبات المنازل الشاملة. احصل على عروض أسعار متعددة، اختر الأنسب لك، وتمتع بخدمة منزلية سريعة وموثوقة.'

                                      '\n****************************',
                                ),
                                Text(
                                  ' المشكلة التي يحلها التطبيق:'
                                      '\n'
                                      'في ظل الحياة العصرية المزدحمة، يواجه الكثيرون تحديًا في العثور على حرفيين مؤهلين وموثوق بهم لإصلاح الأعطال المنزلية أو إنجاز أعمال التشطيبات. غالبًا ما تكون العملية مرهقة، تفتقر للشفافية، ولا تضمن جودة العمل أو السعر العادل.'
                                      '\n'
                                      '****************************',
                                ),
                                Text(
                                  ''
                                      'لمزايا الرئيسية للعملاء:'
                                      '                                            '
                                      'سهولة الطلب: املأ نموذجًا بسيطًا وأرسل طلبك في دقائق.'
                                  '\n'
                                  'خيارات متعددة: استقبل عروض أسعار من عدة حرفيين واختر الأفضل.'
                                      '\n'
                               ' شفافية تامة: اطلع على ملفات الحرفيين وتقييماتهم قبل الاختيار.'
                                      '\n'
                               ' تواصل مباشر: تواصل مع الحرفي المختار مباشرة عبر التطبيق.'
                                      '\n'
                                'خدمة موثوقة: ضمان الحصول على خدمة عالية الجودة من حرفيين مؤهلين. '
                                      '\n'
                                      '****************************',
                                ),
                                Text(
                                  'TradeCraft System'
                                      '\n'
                                      'هو الحل الأمثل لجميع احتياجات الصيانة والتشطيبات المنزلية. مهمتنا هي تبسيط عملية العثور على الحرفيين المؤهلين والموثوق بهم، سواء كنت بحاجة لسباك لإصلاح تسرب، نجار لتجديد أثاثك، كهربائي لإصلاح عطل، أو فريق متكامل لتشطيب منزلك الجديد. يربطك تطبيقنا مباشرةً بشبكة من الحرفيين المحترفين، مما يتيح لك إرسال طلبات الخدمة بسهولة، تلقي عروض أسعار متعددة، واختيار الأنسب لك بكل شفافية وثقة. نحن ملتزمون بتقديم تجربة سلسة، موثوقة، وفعالة لكلا الطرفين. فريق عمل TradeCraft يتطلع لخدمتكم!'
                                      '\n'
                                      '**************************** ',
                                ),
                                Text(
                                  'معلومات الاتصال والدعم:'
                                      '\n'
                                      'للاستفسارات والدعم، يرجى زيارة قسم المساعدة والدعم داخل التطبيق.'
                                      '\n'
                                  'أو تواصل معنا عبر البريد الإلكتروني: [بريد إلكتروني للدعم: support@tradecraft.com]'
                                      '\n'
                                      '****************************',
                                ),

                              ],
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
