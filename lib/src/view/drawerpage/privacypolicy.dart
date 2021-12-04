// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

import 'drawer.dart';
import 'header.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header('Privacy policy'),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text('This Privacy Policy (“Policy”) describes the policies and procedures on the collection, use, disclosure and protection of your information when you use “Telesmile application”, developed by dental interns at College of Dentistry, JazanUnivarsity, Saudi Arabia.Please read this Policy before using the Telesmile Platform or submitting any personal information to Telesmile. This Policy is a part of and incorporated within, and is to be read along with, the Terms of Use.',
              style: TextStyle(fontSize: 14)),
              SizedBox(height: 10,),
              Align(child: Text('سياسة الخصوصية',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),alignment: Alignment.topRight,),
              Align(child: Text('سياسة الخصوصية هذه ("السياسة") تصف السياسات والإجراءات المتعلقة بجمع واستخدام والكشف وحماية معلوماتك عند استخدام "تطبيق Telesmile"، الذي وضعه متدربو طب الأسنان في كلية طب الأسنان، JazanUnivarsity، المملكة العربية السعودية.يرجى قراءة هذه السياسة قبل استخدام منصة تيليسميل أو تقديم أي معلومات شخصية إلى Telesmile. هذه السياسة هي جزء من بنود الاستخدام، ويجب أن تقرأ معها.'),alignment: Alignment.topRight,),
              SizedBox(height: 20),
              Text('Your Consent', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              SizedBox(height: 10),
              Text('By using the Telesmile Platform and the Services, you agree and consent to the collection, transfer, use, storage, disclosure and sharing of your oral health information as described and collected by us in accordance with this Policy. If you do not agree with the Policy, please do not use or access the Telesmile Platform.',
              style: TextStyle(fontSize: 14),),
              SizedBox(height: 10),
              Align(child: Text('موافقتك',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),alignment: Alignment.topRight,),
              Align(child: Text('باستخدام منصة تيليسميل والخدمات، فإنك توافق وتوافق على جمع ونقل واستخدام وتخزين والكشف ومشاركة المعلومات الخاصة بصحة الفم  كما وصفها وجمعها من قبلنا وفقا لهذه السياسة. إذا كنت لا توافق على السياسة، يرجى عدم استخدام أو الوصول إلى منصة تيليسميل.'), alignment: Alignment.topRight,),
              SizedBox(height: 20),
              Text('Policy Changes', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              SizedBox(height: 10),
              Text('We may occasionally update this Policy and such changes will be posted on this page. If we make any significant changes to this Policy we will endeavour to provide you with reasonable notice of such changes, such as via prominent notice on the Telesmile Platform or to your email address on record and where required by applicable law, we will obtain your consent. To the extent permitted under the applicable law, your continued use of our Services after we publish or send a notice about our changes to this Policy shall constitute your consent to the updated Policy.'),
              SizedBox(height: 10),
              Align(child: Text('تغييرات السياسة', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),alignment: Alignment.topRight,),
              Align(child: Text('قد نقوم بتحديث هذه السياسة من حين لآخر وسيتم نشر هذه التغييرات على هذه الصفحة. إذا قمنا بإجراء أي تغييرات هامة على هذه السياسة، فإننا سنسعى لتزويدك بإشعار معقول بهذه التغييرات، مثل إشعار بارز على منصة Telesmile أو إلى عنوان بريدك الإلكتروني المسجل، وعند الاقتضاء بموجب القانون المعمول به، سنحصل على موافقتك. إلى الحد المسموح به بموجب القانون المعمول به، فإن استمرار استخدامك لخدماتنا بعد نشر أو إرسال إشعار حول تغييراتنا على هذه السياسة سيشكل موافقتك على السياسة المحدثة.'),alignment: Alignment.topRight,),
              SizedBox(height: 20),
              Text('Information We Collect From You',style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold),),
              SizedBox(height: 10),
              Text('We will collect and process the following information about you: \n Information you give us - This includes information submitted when you: Create or update your Telesmile account, which may include your name, email, phone number, login name and password, address. Correspond with “Telesmile” for online support;Participate in the interactive services offered by the telesmile Platform such as discussion boards. When you communicate with us through the telesmile Platform, we may maintain a record of your communication.'),
              SizedBox(height: 10),
              Align(child: Text('المعلومات التي نجمعها منك',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),alignment: Alignment.topRight,),
              Align(child: Text('سنقوم بجمع ومعالجة المعلومات التالية عنك: \n المعلومات التي تقدمها لنا - تتضمن هذه المعلومات المعلومات المقدمة عند إنشاء أو تحديث حساب Telesmile الخاص بك، والذي قد يتضمن اسمك، بريدك الإلكتروني، رقم هاتفك، اسم تسجيل الدخول وكلمة المرور، العنوان. تتوافق مع "تيليسميل" للحصول على الدعم عبر الإنترنت؛ المشاركة في الخدمات التفاعلية التي يقدمها منصة إعادة الرسائل الهاتفية مثل لوحات المناقشة. عند التواصل معنا من خلال منصة تيليسميل، قد نحتفظ بسجل الاتصالات الخاصة بك.'),alignment: Alignment.topRight,),
              SizedBox(height: 20),
              Text('Disclosure and Distribution of Your Information', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              SizedBox(height: 10),
              Text('We may share your information that we collect for following purposes: \n With Service Providers: We may share your information with our general dentists, specialists and consultants.'),
              SizedBox(height: 10),
              Align(child: Text('إفشاء وتوزيع المعلومات الخاصة بك', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),alignment: Alignment.topRight,),
              Align(child: Text('قد نشارك معلوماتك التي نجمعها للأغراض التالية: \n المعلومات التي تقدمها لنا - تتضمن هذه المعلومات المعلومات المقدمة عند إنشاء أو تحديث حساب Telesmile الخاص بك، والذي قد يتضمن اسمك، بريدك الإلكتروني، رقم هاتفك، اسم تسجيل الدخول وكلمة المرور، العنوان. '),alignment: Alignment.topRight),
              SizedBox(height: 20),
              Text('Data Security Precautions',style: TextStyle(fontSize:20, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text('Please be aware that the transmission of information via the internet is not completely secure. Although we will do our best to protect your personal data, we cannot guarantee the security of your data transmitted through the Telesmile Platform. Once we have received your information, we will use strict physical, electronic, and procedural safeguards to try to prevent unauthorised access.'),
              SizedBox(height: 10),
              Align(child: Text('تيليسميل منصة الأمن',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),alignment: Alignment.topRight,),
              Align(child: Text('يرجى العلم أن نقل المعلومات عبر الإنترنت ليس آمنا تماما. على الرغم من أننا سنبذل قصارى جهدنا لحماية بياناتك الشخصية، إلا أننا لا نضمن أمن بياناتك المرسلة من خلال منصة تيليسميل. بمجرد استلامنا لمعلوماتك، سنستخدم ضمانات مادية وإليكترونية وإجرائية صارمة لمحاولة منع الوصول غير المصرح به.'),alignment: Alignment.topRight,),
              SizedBox(height: 20),
              Text('Telesmile Platform Security',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              SizedBox(height: 10),
              Text('If you have any queries relating to the processing or usage of information provided by you in connection with this Policy, please email us at ahmad955mls@gmail.com or at the following address: College of Dentistry, Jazan University, Saudi Arabia.'),
              SizedBox(height: 10),
              Align(child: Text('تيليسميل منصة الأمن',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),alignment: Alignment.topRight,),
              Align(child: Text('إذا كان لديك أي استفسارات تتعلق بمعالجة أو استخدام المعلومات المقدمة من قبلك فيما يتعلق بهذه السياسة، يرجى مراسلتنا عبر البريد الإلكتروني على ahmad955mls@gmail.com أو العنوان التالي: كلية طب الأسنان، جامعة جازان، المملكة العربية السعودية.'), alignment: Alignment.topRight,),
            ],
          ),
        ),
      ),
    );
  }
}