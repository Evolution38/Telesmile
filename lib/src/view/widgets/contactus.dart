// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:telesmile/src/view/widgets/texts.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText(
          heading: 'Contact Us',
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
            boldtext: "CONTACT US:\n1) Dr Manawar Ahmad Mansoor\n",
            normal:
                "Assistant Professor\t\nDepartment of Prosthetic Dental Sciences,\t\nCollege of Dentistry, Jazan University, Saudi Arabia\t\nPhone number: +966-553662853\n",
            align: TextAlign.left,
          ),
          English(
            boldtext:"2) Dr Hytham Fageeh\n",
            normal:
                "Assistant Professor\nDepartment of Preventive Dental Sciences,\nCollege of Dentistry, Jazan University, Saudi Arabia\n",
          align: TextAlign.left,
          ),
          English(
            boldtext: "3) Dr Hamza Khan                                                 \n",
            align: TextAlign.left,
          ),
          English(
            boldtext: "4) Dr Abdulrahman Akkam                                                 \n",
            align: TextAlign.left,
          ),
          English(
            boldtext: "5) Dr Idris Muhaddili                                                 \n",
            align: TextAlign.left,
          ),
          English(
            boldtext: "6) Dr Sultan Korairi                                                 \n",
            align: TextAlign.left,
          ),
        ],
      );
    } else if (_value == 2) {
      return Column(
        children: [
          Arab(
            boldtext: "اتصل بنا:\n",
            normal:
                "1. الدكتور منور أحمد منصور\nأستاذ مساعد\nقسم علوم الأسنان الاصطناعية،\nكلية طب الأسنان، جامعة جازان، المملكة العربية السعودية\nرقم الهاتف:- 553662853 966+\n",
          ),
          Arab(
            normal: "2. الدكتور هيثم  فقيه\nأستاذ مساعد\nقسم علوم الأسنان الوقائية،\nكلية طب الأسنان، جامعة جازان، المملكة العربية السعودية\n",
          ),
          Arab(
            normal: "3. الدكتور حمزة خان                                                               \n",
          ),
          Arab(
            normal: "4. الدكتور عبدالرحمن  العكام                                                               \n",
          ),
          Arab(
            normal: "5. الدكتور أدريس مهدلي                                                                \n",
          ),
          Arab(
            normal: "6. الدكتور سلطان  كريري                                                               \n",
          ),
        ],
      );
    }
  }
}

class Arab extends StatelessWidget {
  String? boldtext;
  String? normal;
  TextAlign? align;
  Arab({
    Key? key,
    this.boldtext,
    this.normal,
    this.align
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
  TextAlign? align;
  English({Key? key, this.boldtext, this.normal, this.align}) : super(key: key);

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
      textAlign: align,
      softWrap: true,
      textDirection: TextDirection.ltr,
    );
  }
}
