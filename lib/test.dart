import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({ Key? key }) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Bibendum rhoncus velit dolor tellus a in est nisl. Lobortis egestas ornare ultrices ipsum sollicitudin ornare augue eu enim. Adipiscing quam tincidunt vestibulum condimentum. Erat eget cursus non interdum sagittis. Nullam mauris nisl sagittis blandit turpis fermentum vitae. Sapien scelerisque ultrices id egestas. Faucibus turpis facilisi elit at. Arcu, proin eu at vitae risus donec elit. Neque at quis ultrices cras. Orci, sed iaculis fames bibendum vitae mollis. At mattis consequat congue et neque id donec malesuada eros. Non donec sagittis, odio quis pretium habitant diam vitae, cras.',
            style: TextStyle(
              fontSize: 18,
            ),)
          ],
        ),
      ),
    );
  }
}