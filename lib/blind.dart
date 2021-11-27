import 'package:flutter/material.dart';
import 'package:telesmile/drawer.dart';

class BlindPage extends StatelessWidget {
  const BlindPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Image(
          image: const AssetImage('assets/image.png'),
          fit: BoxFit.cover,
          height: 50,
          width: 50,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      drawer: const MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Color('0xFFFCB117'),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'About Us'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Contact'),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              // ignore: prefer_const_constructors
              SizedBox(height: 20),
              const Text(
                'Oral for Blind',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.Cras pulvinar pellentesque in',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                '.لكل نع مغرلاب ةنيدم يسرك ,دقو نويدلاو ريوطت مت فلاو الا لك .ندم يف ملاعلا ةيملاع ,مت يفو راصتقاو طيحملا',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(width: 4, color: const Color(0xFFFCB117))),
                //  height: 100,
                child: ListTile(
                  leading: Image.network(
                    'https://themighty.com/wp-content/uploads/2018/09/GettyImages-622181368-1280x640.jpg',
                    fit: BoxFit.fill,
                  ),
                  title: const Text(
                    'Title',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(width: 4, color: const Color(0xFFFCB117))),
                //  height: 100,
                child: ListTile(
                  leading: Image.network(
                    'https://themighty.com/wp-content/uploads/2018/09/GettyImages-622181368-1280x640.jpg',
                    fit: BoxFit.fill,
                  ),
                  title: const Text(
                    'Title',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(width: 4, color: const Color(0xFFFCB117))),
                //  height: 100,
                child: ListTile(
                  leading: Image.network(
                    'https://themighty.com/wp-content/uploads/2018/09/GettyImages-622181368-1280x640.jpg',
                    fit: BoxFit.fill,
                  ),
                  title: const Text(
                    'Title',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
