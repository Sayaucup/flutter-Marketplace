import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class SLiderModel {
  final String image;
  final String name;
  final String desc;

  SLiderModel(this.image, this.name, this.desc);
}

List<SLiderModel> slider = [
  SLiderModel(
    'assets/img/vegetable.png',
    'vegetables',
    '30-60% of calories',
  ),
  SLiderModel(
    'assets/img/qwe.jpg',
    'fruits',
    '30-40% of calories',
  ),
  SLiderModel(
    'assets/img/coffee-beans.png',
    'seeds, nuts',
    '10-40% of calories',
  ),
  SLiderModel(
    'assets/img/dairy.png',
    'egg, fish, milk',
    'less than 10% of calories',
  ),
];

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 50),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 150,
                        height: 60,
                        margin: EdgeInsets.symmetric(
                          horizontal: 7,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'vegetables',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'BebasNeue',
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Text(
                              '30-60% of calories',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: 'FredokaOne',
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 150,
                        height: 60,
                        margin: EdgeInsets.symmetric(
                          horizontal: 7,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'fruits',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'BebasNeue',
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Text(
                              '30-40% of calories',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: 'FredokaOne',
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 150,
                        height: 60,
                        margin: EdgeInsets.symmetric(
                          horizontal: 7,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'seeds, nuts',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'BebasNeue',
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Text(
                              '10-40% of calories',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: 'FredokaOne',
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 150,
                        height: 60,
                        margin: EdgeInsets.symmetric(
                          horizontal: 7,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'egg, fish, milk',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'BebasNeue',
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Text(
                              'less than 10% of calories',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: 'FredokaOne',
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 150,
                        height: 60,
                        margin: EdgeInsets.symmetric(
                          horizontal: 7,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'seeds, nuts',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'BebasNeue',
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Text(
                              '10-40% of calories',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: 'FredokaOne',
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 150,
                        height: 60,
                        margin: EdgeInsets.symmetric(
                          horizontal: 7,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'egg, fish, milk',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'BebasNeue',
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Text(
                              'less than 10% of calories',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: 'FredokaOne',
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 150,
                        height: 60,
                        margin: EdgeInsets.symmetric(
                          horizontal: 7,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'seeds, nuts',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'BebasNeue',
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Text(
                              '10-40% of calories',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: 'FredokaOne',
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 150,
                        height: 60,
                        margin: EdgeInsets.symmetric(
                          horizontal: 7,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'egg, fish, milk',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'BebasNeue',
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Text(
                              'less than 10% of calories',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: 'FredokaOne',
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 150,
                        height: 60,
                        margin: EdgeInsets.symmetric(
                          horizontal: 7,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'seeds, nuts',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'BebasNeue',
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Text(
                              '10-40% of calories',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: 'FredokaOne',
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 150,
                        height: 60,
                        margin: EdgeInsets.symmetric(
                          horizontal: 7,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'egg, fish, milk',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'BebasNeue',
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Text(
                              'less than 10% of calories',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: 'FredokaOne',
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 150,
                        height: 60,
                        margin: EdgeInsets.symmetric(
                          horizontal: 7,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'seeds, nuts',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'BebasNeue',
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Text(
                              '10-40% of calories',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: 'FredokaOne',
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 150,
                        height: 60,
                        margin: EdgeInsets.symmetric(
                          horizontal: 7,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'egg, fish, milk',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'BebasNeue',
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Text(
                              'less than 10% of calories',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: 'FredokaOne',
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
    // return Container(
    //   margin: EdgeInsets.symmetric(horizontal: 10),
    //   width: MediaQuery.of(context).size.width,
    //   height: 100,
    //   child: ListView(
    //     scrollDirection: Axis.horizontal,
    //     shrinkWrap: true,
    //     children: slider.map((i) {
    //       return Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: <Widget>[
    //           InkWell(
    //             onTap: () {},
    //             child: Container(
    //               width: 150,
    //               height: 60,
    //               margin: EdgeInsets.symmetric(
    //                 horizontal: 7,
    //               ),
    //               decoration: BoxDecoration(
    //                 color: Colors.white,
    //                 borderRadius: BorderRadius.circular(10),
    //                 boxShadow: [
    //                   BoxShadow(
    //                     color: Colors.black54.withOpacity(0.5),
    //                     spreadRadius: 1,
    //                     blurRadius: 2,
    //                     offset: Offset(0, 1), // changes position of shadow
    //                   ),
    //                 ],
    //               ),
    //               child: Column(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: <Widget>[
    //                   // ClipRRect(
    //                   //     borderRadius: BorderRadius.circular(10),
    //                   //     child: Image.asset(
    //                   //       i.image,
    //                   //       fit: BoxFit.cover,
    //                   //       height: 100,
    //                   //       width: 100,
    //                   //     )),
    //                   Text(
    //                     i.name,
    //                     style: TextStyle(
    //                       fontSize: 20,
    //                       fontFamily: 'BebasNeue',
    //                       color: Theme.of(context).primaryColor,
    //                     ),
    //                   ),
    //                   Text(
    //                     i.desc,
    //                     style: TextStyle(
    //                         fontSize: 11,
    //                         fontFamily: 'FredokaOne',
    //                         color: Colors.black54),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ],
    //       );
    //     }).toList(),
    //   ),
    // );
  }
}
