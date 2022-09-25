import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  final String imagePath;
  final String data;
  InfoPage(
    {required this.imagePath, 
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30), 
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30), 
                    bottomRight: Radius.circular(30), 
                  ),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              height: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(data, style: TextStyle(
                          color: Colors.deepOrangeAccent[100],
                          fontSize: 20,
                          fontWeight: FontWeight.w600,                         
                          ),
                        textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: FloatingActionButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          //padding: EdgeInsets.symmetric(vertical: 15),
                          //color: Colors.deepOrange[100],
                          child: Text(
                            'Назад', 
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}