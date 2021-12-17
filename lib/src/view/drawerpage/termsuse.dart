// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'drawer.dart';
import '../widgets/header.dart';

class TermsUse extends StatefulWidget {
  const TermsUse({Key? key}) : super(key: key);

  @override
  _TermsUseState createState() => _TermsUseState();
}

class _TermsUseState extends State<TermsUse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header('Terms of Use',),
      body: SingleChildScrollView(
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text('1. These terms and conditions of use (“Terms of Use”) describe the terms applicable to your use of this digital application for the purposes of use and promotion of oral health status and oral hygiene practice among disabled community.'),
              Text('2. Intellectual Property Rights',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              Text('You shall not:'),
              Text('(a) License, sell, rent, lease, transfer, assign, distribute, host, or otherwise commercially exploit the Covered Sites, without express written consent of telesmile;'),
              Text('(b) You shall not modify, make derivative works of, disassemble, reverse compile or reverse engineer any part of the Covered Sites;'),
              Text('(c) You shall not access the Covered Sites in order to build a similar or competitive service;'),
              Text('(d) Copy, reproduce, distribute, republish, download, displayed, poste or transmit in any form or by any means, any part of the Covered Sites, for any commercial purpose, without express written consent of telesmile;'),
              Text('(e) Use the Covered Sites in any way that causes, or may cause, damage to the Covered Sites or impair the availability or accessibility of the Covered Sites or in any way which is unlawful, illegal, fraudulent or harmful, or in connection with any unlawful, illegal, fraudulent or harmful purpose or activity'),
              Text('(f) Conduct any systematic or automated data collection activities on or in relation to the Covered Sites without express written consent of telesmile.'),
              SizedBox(height: 10),
              Align(child: Text('شروط الاستخدام',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),alignment: Alignment.topRight,),
              Align(child: Text('1. هذه الشروط والأحكام الاستخدام  ("شروط الاستخدام")  وصف المصطلحات المطبقة على استخدامك لهذا التطبيق الرقمي لأغراض استخدام وتعزيز حالة صحة الفم وممارسة نظافة الفم بين المجتمع المعوقين.'),alignment: Alignment.topRight,),
              Align(child: Text('2. حقوق الملكية الفكرية',style: TextStyle(fontSize:16,fontWeight: FontWeight.bold)),alignment: Alignment.topRight,),
              Align(child: Text('لا يجوز لك:'),alignment: Alignment.topRight,),
              Align(child: Text('(أ) الترخيص أو البيع أو الإيجار أو الإيجار أو النقل أو التعيين أو التوزيع أو المضيف أو استغلال المواقع المشمولة تجاريا، دون موافقة كتابية صريحة من telesmile؛'),alignment: Alignment.topRight,),
              Align(child: Text('(ب) لا يجوز لك تعديل أو عمل أعمال مشتقة أو تفكيك أو ترجمة عكسية أو عكس مهندس أي جزء من المواقع المشمولة؛'),alignment: Alignment.topRight,),
              Align(child: Text('(ج) لا يجوز لك الوصول إلى المواقع المشمولة من أجل بناء خدمة مماثلة أو تنافسية؛'),alignment: Alignment.topRight,),
              Align(child: Text('(د) نسخ أو استنساخ أو توزيع أو إعادة نشر أو تنزيل أو عرض أو نشر أو إرسال بأي شكل أو بأي وسيلة من المواقع المشمولة، لأي غرض تجاري، دون موافقة خطية صريحة من البريدالإلكتروني؛'),alignment: Alignment.topRight,),
              Align(child: Text('(ه) استخدام المواقع المشمولة بأي طريقة تسبب أو قد تسبب ضررا للمواقع المغطاة أو تعوق توافر أو إمكانية الوصول إلى المواقع المشمولة أو بأي شكل من الأشكال غير قانوني أو غير قانوني أو احتيالي أو ضار، أو فيما يتعلق بأي غرض أو نشاط غير قانوني أو غير قانوني أو احتيالي أو ضار'),alignment: Alignment.topRight,),
              Align(child: Text('(و) القيام بأي أنشطة منهجية أو مؤتمتة لجمع البيانات على المواقع المشمولة أو فيما يتعلق بها دون موافقة خطية صريحة من  البريد الإلكتروني.'),alignment: Alignment.topRight,),
            ],
          ),
        )
      ),
    );
  }
}