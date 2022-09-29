import 'package:flutter/material.dart';
import 'info_page.dart';

// List<ImageInfo> _images = [
//   ImageInfo(
//     imagePath: 'images/0.jpg',
//     data: 'Панды',
//   ),
//   ImageInfo(
//     imagePath: 'images/1.jpg',
//     data: 'Лисенок',
//   ),
//   ImageInfo(
//     imagePath: 'images/2.jpg',
//     data: 'Белка',
//   ),
//   ImageInfo(
//     imagePath: 'images/3.jpg',
//     data: 'Жирафы',
//   ),
//   ImageInfo(
//     imagePath: 'images/4.jpg',
//     data: 'Собака и сова',
//   ),
//   ImageInfo(
//     imagePath: 'images/5.jpg',
//     data: 'Медведи',
//   ),
//   ImageInfo(
//     imagePath: 'images/6.jpg',
//     data: 'Панда',
//   ),
//   ImageInfo(
//     imagePath: 'images/7.jpg',
//     data: 'Леопард',
//   ),
//   ImageInfo(
//     imagePath: 'images/8.jpg',
//     data: 'Львы',
//   ),
//   ImageInfo(
//     imagePath: 'images/9.jpg',
//     data: 'Гепард',
//   ),
//   ImageInfo(
//     imagePath: 'images/10.jpg',
//     data: 'Коалы',
//   ),
//   ImageInfo(
//     imagePath: 'images/11.jpg',
//     data: 'Лемуры',
//   ),
//   ImageInfo(
//     imagePath: 'images/12.jpg',
//     data: 'Бык',
//   ),
//   ImageInfo(
//     imagePath: 'images/13.jpg',
//     data: 'Львица',
//   ),
//   ImageInfo(
//     imagePath: 'images/14.jpg',
//     data: 'Обезьяна',
//   ),
//   ImageInfo(
//     imagePath: 'images/15.jpg',
//     data: 'Зайцы',
//   ),
//   ImageInfo(
//     imagePath: 'images/16.jpg',
//     data: 'Белка',
//   ),
//   ImageInfo(
//     imagePath: 'images/17.jpg',
//     data: 'Носорог',
//   ),
//   ImageInfo(
//     imagePath: 'images/18.jpg',
//     data: 'Капибара',
//   ),
//   ImageInfo(
//     imagePath: 'images/19.jpg',
//     data: 'Тюлень',
//   ),
// ];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent[100],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Text(
              'Коллекция фотографий',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 130,
                  ),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InfoPage(
                                imagePath: 'images/${index}.jpg',
                                data: '${index}'),
                                //imagePath: _images[index].imagePath,
                                //data: _images[index].data),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage('images/${index}.jpg'),
                            fit: BoxFit.contain,
                            scale: 0.9,
                          ),
                        ),
                      ),
                    );
                  },
                  //itemCount: _images.length,
                  itemCount: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageInfo {
  final String imagePath;
  final String data;

  ImageInfo({
    required this.imagePath,
    required this.data,
  });
}
