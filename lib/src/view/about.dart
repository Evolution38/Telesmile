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
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    // border: Border.all(
                    //   width: 2,
                    //   color: Color(0xFFFCB117),
                    // ),
                    borderRadius: BorderRadius.circular(10)),
                child: _renderWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }

  _renderWidget() {
    if (_value == 1) {
      return Column(
      children: const [
        Text.rich(
          TextSpan(
            text: "ABOUT US:\n",
            style: TextStyle(
                fontFamily: 'Poppins', fontSize: 17, fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: "WHO WE ARE\nWe are a group of Dental intern researchers, Dr. Hamza Khan, Dr. Abdulrahman Akkam, Dr. Edrees & Dr. Sultan Korairi, along with our two supervisors, Dr. Manawar Ahmad Mansoor & Dr. Hytham Fageeh, from College of Dentistry, Jazan University, Saudi Arabia. We are dedicated to provide an efficient solution by creating the “mobile application - Telesmile” to improve the knowledge regarding the oral health care and oral hygiene practice for the individuals with disability such as Visual impairment (blindness), Deaf, Mental retardation, Autism and Down syndrome in the Kingdom of Saudi Arabia.",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          textAlign: TextAlign.justify,
          softWrap: true,
          textDirection: TextDirection.ltr,
        ),
      ],
    ); 
    } else if (_value == 2) {
      return Column(
      children: const [
        Text.rich(
          TextSpan(
            text: "من نحن:\n",
            style: TextStyle(
              fontFamily: 'Almarai',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: "من نحن\nنحن مجموعة من الباحثين المتدربين في الأسنان،  د.حمزة  خان, د.عبدالرحمن العكام، د. إدريس مهدلي, د. سلطان كريري، جنبا إلى جنب مع اثنين من المشرفين لدينا، الدكتورمنور أحمد منصور والدكتور هيثم فقيه، من كلية طب الأسنان، جامعة جازان، المملكة العربية السعودية. نحن ملتزمون بتوفير حل فعال من خلال إنشاء تطبيق الهاتف المحمول - 'Telesmile' لتحسين المعرفة فيما يتعلق بالرعاية الصحية للفم وممارسة نظافة الفم للأفراد ذوي الإعاقة مثل ضعف البصر (العمى) والصم  والتخلف العقلي والتوحد ومتلازمة داون في المملكة العربية السعودية",
                style: TextStyle(
                    fontFamily: 'Almarai',
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          textAlign: TextAlign.justify,
          textDirection: TextDirection.rtl,
          softWrap: true,
        ),
      ],
    );
      // LineSpanTextArab(
      //   boldtext: "من نحن:\n",
      //   normaltext: "من نحن\n نحن مجموعة من الباحثين المتدربين في الأسنان،  د.حمزة  خان, د.عبدالرحمن العكام، د. إدريس مهدلي, د. سلطان كريري، جنبا إلى جنب مع اثنين من المشرفين لدينا، الدكتورمنور أحمد منصور والدكتور هيثم فقيه، من كلية طب الأسنان، جامعة جازان، المملكة العربية السعودية.نحن ملتزمون بتوفير حل فعال من خلال إنشاء تطبيق الهاتف المحمو",
      // );
      // Arabic(
      //     arabic:
      //         "من نحن:\nمن نحن\n نحن مجموعة من الباحثين المتدربين في الأسنان،  د.حمزة  خان, د.عبدالرحمن العكام، د. إدريس مهدلي, د. سلطان كريري، جنبا إلى جنب مع اثنين من المشرفين لدينا، الدكتورمنور أحمد منصور والدكتور هيثم فقيه، من كلية طب الأسنان، جامعة جازان، المملكة العربية السعودية.نحن ملتزمون بتوفير حل فعال من خلال إنشاء تطبيق الهاتف المحمول 'Telesmile' لتحسين المعرفة فيما يتعلق بالرعاية الصحية للفم وممارسة نظافة الفم للأفراد ذوي الإعاقة مثل ضعف البصر (العمى) والصم  والتخلف العقلي والتوحد ومتلازمة داون في المملكة العربية السعودية"
      // );
    }
  }
}
