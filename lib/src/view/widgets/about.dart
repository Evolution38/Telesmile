// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:telesmile/src/view/widgets/texts.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText(
          heading: 'About Us',
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        // leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {},),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              DropdownButton(
                isExpanded: false,
                value: _value,
                items: const [
                  DropdownMenuItem(
                    child: Center(
                      child: Text(
                        'English',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Center(
                      child: Text(
                        'Arabic',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    value: 2,
                  ),
                ],
                onChanged: (int? value) {
                  if (value == 1) {
                    setState(() {
                      _value = 1;
                    });
                  } else if (value == 2) {
                    setState(() {
                      _value = 2;
                    });
                  }
                },
              ),
              const SizedBox(height: 10),
              _renderWidget(),
            ],
          ),
        ),
      ),
    );
  }

  _renderWidget() {
    if (_value == 1) {
      return Column(
        children: [
          English(
            boldtext: "ABOUT US:\n",
            normal:
                "WHO WE ARE\nWe are a group of Dental intern researchers, Dr. Hamza Khan, Dr. Abdulrahman Akkam, Dr. Edrees & Dr. Sultan Korairi, along with our two supervisors, Dr. Manawar Ahmad Mansoor & Dr. Hytham Fageeh, from College of Dentistry, Jazan University, Saudi Arabia. We are dedicated to provide an efficient solution by creating the “mobile application - Telesmile” to improve the knowledge regarding the oral health care and oral hygiene practice for the individuals with disability such as Visual impairment (blindness), Deaf, Mental retardation, Autism and Down syndrome in the Kingdom of Saudi Arabia.",
          ),
          const SizedBox(height: 20),
          English(
            boldtext: "Our Mission\n",
            normal:
                "Our Mission is to improve the oral health status and oral hygiene practice of disabled people.",
          ),
          const SizedBox(height: 20),
          English(
            boldtext: "Our Vision\n",
            normal:
                "Our Vision is to provide the scientifically approved best oral health care to the individuals with disability.",
          ),
          const SizedBox(height: 20),
          English(
            boldtext: "Our Goals\n",
            normal:
                "To train more dental professional who can communicate with the disabled patients.To create more scientific methods to improve the oral health status of the disabled community in Saudi Arabia.",
          ),
        ],
      );
    } else if (_value == 2) {
      return Column(
        children: [
          Arab(
            boldtext: "من نحن:\n",
            normal:
                "من نحن\nنحن مجموعة من الباحثين المتدربين في الأسنان،  د.حمزة  خان, د.عبدالرحمن العكام، د. إدريس مهدلي, د. سلطان كريري، جنبا إلى جنب مع اثنين من المشرفين لدينا، الدكتورمنور أحمد منصور والدكتور هيثم فقيه، من كلية طب الأسنان، جامعة جازان، المملكة العربية السعودية. نحن ملتزمون بتوفير حل فعال من خلال إنشاء تطبيق الهاتف المحمول - 'Telesmile' لتحسين المعرفة فيما يتعلق بالرعاية الصحية للفم وممارسة نظافة الفم للأفراد ذوي الإعاقة مثل ضعف البصر (العمى) والصم  والتخلف العقلي والتوحد ومتلازمة داون في المملكة العربية السعودية",
          ),
          const SizedBox(height: 20),
          Arab(
            boldtext: "مهمتنا\n",
            normal: "مهمتنا هي تحسين الحالة الصحية للفم وممارسة نظافة الفم  للأشخاص ذوي الإعاقة",
          ),
          const SizedBox(height: 20),
          Arab(
            boldtext: "رؤيتنا\n",
            normal: "الرؤية الخاصة بنا هي توفير أفضل رعاية صحية للفم المعتمدة علميا  للأفراد ذوي الإعاقة",
          ),
          const SizedBox(height: 20),
          Arab(
            boldtext: "أهدافنا\n",
            normal: "تدريب المزيد من أطباء الأسنان الذين يمكنهم التواصل مع المرضى المعاقين\nخلق المزيد من الأساليب العلمية لتحسين الحالة الصحية للفم في مجتمع المعاقين في المملكة العربية السعودية.",
          ),
        ],
      );
    }
  }
}

class Arab extends StatelessWidget {
  String? boldtext;
  String? normal;
  Arab({
    Key? key,
    this.boldtext,
    this.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: boldtext,
        style: const TextStyle(
          fontFamily: 'Almarai',
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: normal,
            style: const TextStyle(
                fontFamily: 'Almarai',
                fontSize: 18,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
      textAlign: TextAlign.justify,
      textDirection: TextDirection.rtl,
      softWrap: true,
    );
  }
}

class English extends StatelessWidget {
  String? boldtext;
  String? normal;
  English({Key? key, this.boldtext, this.normal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: boldtext,
        style: const TextStyle(
            fontFamily: 'Poppins', fontSize: 17, fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: normal,
            style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 17,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
      textAlign: TextAlign.justify,
      softWrap: true,
      textDirection: TextDirection.ltr,
    );
  }
}
