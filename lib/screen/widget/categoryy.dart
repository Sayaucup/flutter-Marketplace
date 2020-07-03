import 'package:flutter/material.dart';

class Categoryy extends StatefulWidget {
  @override
  _CategoryyState createState() => _CategoryyState();
}

class category {
  final String image;
  final String name;

  category(this.image, this.name);
}

class _CategoryyState extends State<Categoryy> {
  List<category> i = [
    category('assets/img/1.jpg', '1'),
    category('assets/img/2.jpg', '2'),
    category('assets/img/3.jpg', '3'),
    category('assets/img/4.jpg', '4'),
    category('assets/img/5.jpg', '5'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
