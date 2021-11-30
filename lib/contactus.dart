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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Row(
              children: const [
                Icon(Icons.arrow_back),
                Padding(
                  padding: EdgeInsets.only(left: 110),
                  child: Text(
                    'Contact Us',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            DropdownButton(
              isExpanded: true,
              value: _value,
              hint: const Text('Select Language'),
              items: const [
                DropdownMenuItem(
                  child: Text(
                    'English',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text(
                    'Arabic',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  value: 2,
                ),
              ],
              onChanged: (int? value) {
                setState(() {
                  _value = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}



