// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Text('Privacy policy',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Text('This Privacy Policy (“Policy”) describes the policies and procedures on the collection, use, disclosure and protection of your information when you use “Telesmile application”, developed by dental interns at College of Dentistry, JazanUnivarsity, Saudi Arabia.Please read this Policy before using the Telesmile Platform or submitting any personal information to Telesmile. This Policy is a part of and incorporated within, and is to be read along with, the Terms of Use.',
              style: TextStyle(fontSize: 14)),
              SizedBox(height: 10,),
              Align(child: Text('سياسة الخصوصية',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),alignment: Alignment.topRight,),
              Text('سياسة الخصوصية هذه ("السياسة") تصف السياسات والإجراءات المتعلقة بجمع واستخدام والكشف وحماية معلوماتك عند استخدام "تطبيق Telesmile"، الذي وضعه متدربو طب الأسنان في كلية طب الأسنان، JazanUnivarsity، المملكة العربية السعودية.يرجى قراءة هذه السياسة قبل استخدام منصة تيليسميل أو تقديم أي معلومات شخصية إلى Telesmile. هذه السياسة هي جزء من بنود الاستخدام، ويجب أن تقرأ معها.'),
              SizedBox(height: 20),
              Text('Your Consent', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Text('By using the Telesmile Platform and the Services, you agree and consent to the collection, transfer, use, storage, disclosure and sharing of your oral health information as described and collected by us in accordance with this Policy. If you do not agree with the Policy, please do not use or access the Telesmile Platform.',
              style: TextStyle(fontSize: 14),),
              SizedBox(height: 10),
              Align(child: Text('موافقتك',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),alignment: Alignment.topRight,),
              Text('باستخدام منصة تيليسميل والخدمات، فإنك توافق وتوافق على جمع ونقل واستخدام وتخزين والكشف ومشاركة المعلومات الخاصة بصحة الفم  كما وصفها وجمعها من قبلنا وفقا لهذه السياسة. إذا كنت لا توافق على السياسة، يرجى عدم استخدام أو الوصول إلى منصة تيليسميل.'),
              SizedBox(height: 20),
              Text('Policy Changes', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Text('We may occasionally update this Policy and such changes will be posted on this page. If we make any significant changes to this Policy we will endeavour to provide you with reasonable notice of such changes, such as via prominent notice on the Telesmile Platform or to your email address on record and where required by applicable law, we will obtain your consent. To the extent permitted under the applicable law, your continued use of our Services after we publish or send a notice about our changes to this Policy shall constitute your consent to the updated Policy.'),
            ],
          ),
        ),
      ),
    );
  }
}