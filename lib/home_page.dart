import 'package:flutter/material.dart';

List<ImageInfo> _images = [
  ImageInfo(
    imagePath: 'images/1.jpg',
    data: 'animal',
  ),
  ImageInfo(
    imagePath: 'images/2.jpg',
    data: 'animal',
  ),
  ImageInfo(
    imagePath: 'images/3.jpg',
    data: 'animal',
  ),
  ImageInfo(
    imagePath: 'images/4.jpg',
    data: 'animal',
  ),
  ImageInfo(
    imagePath: 'images/5.jpg',
    data: 'animal',
  ),
  ImageInfo(
    imagePath: 'images/6.jpg',
    data: 'animal',
  ),
  ImageInfo(
    imagePath: 'images/7.jpg',
    data: 'animal',
  ),
  ImageInfo(
    imagePath: 'images/8.jpg',
    data: 'animal',
  ),
  ImageInfo(
    imagePath: 'images/9.jpg',
    data: 'animal',
  ),
  ImageInfo(
    imagePath: 'images/10.jpg',
    data: 'animal',
  ),
  ImageInfo(
    imagePath: 'images/11.jpg',
    data: 'animal',
  ),
  ImageInfo(
    imagePath: 'images/12.jpg',
    data: 'animal',
  ),
  ImageInfo(
    imagePath: 'images/13.jpg',
    data: 'animal',
  ),
  ImageInfo(
    imagePath: 'images/14.jpg',
    data: 'animal',
  ),
  ImageInfo(
    imagePath: 'images/15.jpg',
    data: 'animal',
  ),
  ImageInfo(
    imagePath: 'images/16.jpg',
    data: 'animal',
  ),
  ImageInfo(
    imagePath: 'images/17.jpg',
    data: 'animal',
  ),
  ImageInfo(
    imagePath: 'images/18.jpg',
    data: 'animal',
  ),
  ImageInfo(
    imagePath: 'images/19.jpg',
    data: 'animal',
  ),
  ImageInfo(
    imagePath: 'images/20.jpg',
    data: 'animal',
  ),
];
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.deepOrangeAccent[100],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text(
              'Коллекция фотографий', 
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.white,
            ),
            textAlign: TextAlign.center,),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20, 
                  vertical: 30,),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30), 
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30), 
                    bottomRight: Radius.circular(30), 
                  ),
                ),
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 130,
                ), 
                itemBuilder: (context, index) {
                  return RawMaterialButton(
                    onPressed: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(_images[index].imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                }, itemCount: _images.length,),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ImageInfo{
  final String imagePath;
  final String data;

  ImageInfo({required this.imagePath, required this.data,});
}