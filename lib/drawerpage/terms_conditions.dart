// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:telesmile/drawerpage/drawer.dart';
import 'package:telesmile/drawerpage/header.dart';

class TermsConditions extends StatefulWidget {
  const TermsConditions({ Key? key }) : super(key: key);

  @override
  _TermsConditionsState createState() => _TermsConditionsState();
}

class _TermsConditionsState extends State<TermsConditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header('TERMS AND CONDITIONS'),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            // SizedBox(height: 30,),
            // Text('TERMS AND CONDITIONS:',
            // style: TextStyle(
            //   fontSize: 20,
            //   fontWeight: FontWeight.bold,
            // ),),
            SizedBox(height: 15),
            Text('Disclaimer', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            SizedBox(height: 10),
            Text('“Telesmile mobile application” will provide the oral health awareness information to the disabled community. The information provided here may change from time to time without any prior notice. All the information is provided by “Telesmile application” is for improving the oral health status and oral hygiene practice among the disabled community such as visual impairness, deafness, mental retardation, Autism and Down syndrome in the Kingdom of Saudi Arabia. We give our full efforts to keep the information on the application updated and scientifically designed under the supervision of the experts in their related fields. There is no type of representation made from us nor do we provide any warranties of any kind, whether express or implied, in relation to the accuracy, availability, suitability, reliability with respect of the information, product, services, or related matter contained on the application. Therefore the information used by you is solely at your own risk. We shall not be responsible or liable in any case for any loss or damage including indirect or consequential loss or damage, or any loss or damage whatsoever caused due from loss of data or profits arising out of, or in connection with, the use of this application.We are trying our best to keep the application up and function smoothly. However, “Telesmile application” is not liable or responsible for the application being unavailable for a temporary period due to some technical problems which cannot be controlled by us.',style: TextStyle(fontSize: 14),),
            SizedBox(height:20),
            Align(child: Text('الشروط والأحكام:',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)), alignment: Alignment.topRight,),
            SizedBox(height: 15,),
            Align(child: Text('اخلاء المسؤوليه',style: TextStyle(fontSize:16,fontWeight: FontWeight.bold)),alignment: Alignment.topRight,),
            Align(child: Text('وسيوفر "تطبيق الهاتف المحمول عبر الهاتف المحمول" معلومات التوعية بصحة الفم لمجتمع المعاقين. قد تتغير المعلومات المقدمة هنا من وقت لآخر دون أي إشعار مسبق. كل مايتم توفيره من خلال "Telesmile mobile application" هو تحسين حالة صحة الفم وممارسة نظافة الفم بين مجتمع المعاقين مثل ضعف البصر والصمم والتخلف العقلي والتوحد ومتلازمة داون في المملكة العربية السعودية. '),alignment: Alignment.topRight,),
            Align(child: Text('نحن نبذل جهودنا الكاملة لتكون المعلومات على تطبيق محدثة ومصممة علميا تحت إشراف الخبراء في المجالات ذات الصلة بهم. لا يوجد أي نوع من التمثيل المقدم منا ولا نقدم أي ضمانات من أي نوع، سواء كانت صريحة أو ضمنية، فيما يتعلق بدقة أو توافر أو ملاءمة أو موثوقية فيما يتعلق بالمعلومات أو المنتج أو الخدمات أو المسألة ذات الصلة الواردة في  التطبيق. ولذلك فإن المعلومات التي تستخدمها هي فقط على مسؤوليتك الخاصة.'),alignment: Alignment.topRight,),
            Align(child: Text('لن نكون مسؤولين في أي حال عن أي خسارة أو ضرر بما في ذلك الخسائر أو الضرر غير المباشر أو التبعي، أو أي خسارة أو ضرر من أي نوع ناجم عن فقدان البيانات أو الأرباح الناشئة عن استخدام هذا التطبيق أو في الاتصال به. نحن نحاول قصارى جهدنا للحفاظ على التطبيق حتى يعمل بسلاسة. ومع ذلك ، "application Telesmile "  ليس مسؤولاً عن عدم توفر التطبيق لفترة مؤقتة بسبب بعض المشاكل التقنية التي لا يمكن السيطرة عليها من قبلنا.'),alignment: Alignment.topRight,)
            ],
          ),
        ),
      ),
    );
  }
}