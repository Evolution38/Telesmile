// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  final imageList = [
    'https://images.news18.com/ibnlive/uploads/2021/07/1627476684_whatsapp-image-2021-07-28-at-6.20.42-pm-1600x900.png',
    'https://assets.unenvironment.org/styles/article_billboard_image/s3/2021-05/alberta-2297204_1920.jpg?h=1483c54f&amp;itok=GdjA9GRu',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Altja_j%C3%B5gi_Lahemaal.jpg/1200px-Altja_j%C3%B5gi_Lahemaal.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('ImagePage'),
      //   centerTitle: true,
      // ),
      body: PhotoViewGallery.builder(
        itemCount: imageList.length,
        builder: (context, index) {
          return PhotoViewGalleryPageOptions(
            imageProvider: NetworkImage(imageList[index]),
<<<<<<< Updated upstream
            minScale: PhotoViewComputedScale.contained * 1,
            maxScale: PhotoViewComputedScale.covered * 1,
=======
            // minScale: PhotoViewComputedScale.contained * 0.8,
            // maxScale: PhotoViewComputedScale.covered * 1,
>>>>>>> Stashed changes
          );
        },
        scrollPhysics: BouncingScrollPhysics(),
        backgroundDecoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
        ),
        enableRotation: false,
        loadingBuilder: (context, event) => Center(
          child: Container(
            width: 30.0,
            height: 30.0,
            child: CircularProgressIndicator(
              backgroundColor: Colors.orange,
              value: event == null
                  ? 0
                  : event.cumulativeBytesLoaded / event.expectedTotalBytes!,
            ),
          ),
        ),
      ),
    );
  }
}
