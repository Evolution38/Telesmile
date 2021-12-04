import 'package:flutter/material.dart';

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
        title: const Text(
          'Contact Us',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              DropdownButton(
                isExpanded: false,
                value: _value,
                hint: const Text('Select Language'),
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
                  // setState(() {
                  //   _value = value;
                  // });
                },
              ),
              const SizedBox(height: 10),
              Container(
                height: MediaQuery.of(context).size.width * 1.2,
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
      return const Text(
        "Lorem ipsum dolor sit amet, consect etur adipiscing elit. Bibendum rhon cus velit dolor tellus a in est nisl. Lobortis egestas ornare ultrices ipsum sollicitudin ornare augue euenim. Adipiscing quam tincidunt vestibulum condimentum. Erat eget cursus non interdum sagittis. Nullam mauris nisl sagittis blandit turpis fermentum vitae. Sapien scelerisque ultrices id egestas. Faucibus turpis facilisi elit at. Arcu, proin eu at vitae risus donec elit. Neque at quis ultrices cras. Orci, sed iaculis fames bibendum vitae mollis. At mattis consequat congue et neque id donec malesuada eros. Non donec sagittis, odio quis pretium habitant diam vitae, cras.",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      );
    } else if (_value == 2) {
      return const Text(
        "تم تطوير والديون وقد, كرسي مدينة بالرغم عن لكل. المحيط واقتصار وفي تم, عالمية العالم في مدن. كل الا والفلبين الاندونيسية, قتيل، مهمّات ومن إذ, جهة من الفترة ارتكبها الشتوية. أما ثم أمّا بأيدي, لعملة الأرواح الأبرياء ان وصل. تعديل مدينة العدّ وقد عن. الهادي التحالف الإمتعاض حدى ما, عن جهة الأحمر وأكثرها.تشكيل تحرير الطريق قام ما, فمرّ إعادة الإيطالية أضف ٣٠, فقد بـ مقاومة الفرنسية. إعمار المسرح الوزراء ذلك أي, العصبة لليابان التاريخ، إذ ولم, مع جهة أسيا الإحتفاظ. وإيطالي الربيع، هذه قد, إيو بـ مشروط بلديهما الشّعبين. بل بال علاقة بولندا، الأمريكية, هذه مع حلّت لعدم الثالث. تحرير بتخصيص بل دار, أن قام كانت دأبوا الشرقي, ثم ويتّفق لإنعدام الا. مدن إذ عشوائية بالسيطرة الأوروبيّون, أضف أن الهادي استمرار. قررت وحرمان والفلبين ذلك تم, لم وأزيز العالمي الأثناء، بعض, فعل أم هنا؟ أحدث للحك أي معقل كُلفة أخذ, كما في مرمى للمجهود. فصل أم وبدأت وعُرفت, أدنى الشرق، أي",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      );
    }
  }
}
