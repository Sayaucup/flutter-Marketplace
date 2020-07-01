import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  List slider = [
    'assets/img/1.jpg',
    'assets/img/2.jpg',
    'assets/img/3.jpg',
    'assets/img/4.jpg',
    'assets/img/5.jpg'
  ];
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: <Widget>[
          CarouselSlider(
            autoPlayAnimationDuration: Duration(seconds: 3),
            autoPlayInterval: Duration(seconds: 10),
            aspectRatio: 2,
            enlargeCenterPage: true,
            autoPlay: true,
            onPageChanged: (index) {
              setState(() {
                _current = index;
                print('${_current}');
              });
            },
            items: slider.map((e) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: InkWell(
                        // onTap: () {
                        //   Navigator.push(context,
                        //       MaterialPageRoute(builder: (context) => Contoh()));
                        // },
                        child: Image(
                          image: AssetImage(e),
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
