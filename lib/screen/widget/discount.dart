import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:marketplace/screen/food.dart';
import 'package:marketplace/screen/widget/food_item.dart';

class Discount extends StatefulWidget {
  @override
  _DiscountState createState() => _DiscountState();
}

class _DiscountState extends State<Discount> {
  var discount = [
    Item(
        'https://images.pexels.com/photos/1437629/pexels-photo-1437629.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        'Juice',
        '70.000',
        Icon(Icons.star, size: 15, color: Color(0xfff1c40f)),
        '5',
        '231'),
    Item(
        'https://images.pexels.com/photos/315755/pexels-photo-315755.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
        'Pizza',
        '70.000',
        Icon(Icons.star, size: 15, color: Color(0xfff1c40f)),
        '3',
        '123'),
    Item(
        'https://images.pexels.com/photos/1998635/pexels-photo-1998635.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
        'Baked pastry',
        '70.000',
        Icon(Icons.star, size: 15, color: Color(0xfff1c40f)),
        '2.1',
        '213'),
    Item(
        'https://images.pexels.com/photos/3186654/pexels-photo-3186654.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
        'Barbecue',
        '70.000',
        Icon(Icons.star, size: 15, color: Color(0xfff1c40f)),
        '3.9',
        '412'),
  ];
  void toast() {
    Fluttertoast.showToast(
        msg: "In Progress",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Theme.of(context).primaryColor,
        textColor: Colors.white,
        fontSize: 15);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 265,
      child: ListView(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: discount.map((items) {
          return InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Food(items: items)));
            },
            child: Container(
              width: 110,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Hero(
                    tag: items.image,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: 157,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(items.image),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          items.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).accentColor),
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              width: 27,
                              height: 23,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).accentColor,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '30%',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'FredokaOne',
                                      color: Theme.of(context).primaryColor),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              'Rp 100.000',
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor:
                                      Theme.of(context).primaryColor,
                                  decorationThickness: 5,
                                  color: Theme.of(context).accentColor),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Rp.${items.price}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).accentColor)),
                        Row(
                          children: <Widget>[
                            items.rating,
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 3),
                              child: Text(
                                items.rating2,
                                style: TextStyle(
                                    fontFamily: 'FredokaOne',
                                    fontSize: 13,
                                    color: Theme.of(context).accentColor),
                              ),
                            ),
                            Text('(${items.review})',
                                style: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  fontFamily: 'FredokaOne',
                                  fontSize: 13,
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
    // Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   children: <Widget>[
    //     InkWell(
    //       onTap: () {
    //         toast();
    //       },
    //       child: Container(
    //         width: 110,
    //         decoration: BoxDecoration(
    //             color: Theme.of(context).accentColor,
    //             borderRadius: BorderRadius.circular(10),
    //             border:
    //                 Border.all(color: Theme.of(context).accentColor, width: 2)),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: <Widget>[
    //             Container(
    //               height: 130,
    //               decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.only(
    //                       topLeft: Radius.circular(10),
    //                       topRight: Radius.circular(10)),
    //                   image: DecorationImage(
    //                       image: NetworkImage(
    //                           'https://images.pexels.com/photos/315755/pexels-photo-315755.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
    //                       fit: BoxFit.cover)),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.all(3),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: <Widget>[
    //                   Text(
    //                     'Pizza',
    //                     style: TextStyle(
    //                         fontWeight: FontWeight.bold,
    //                         color: Theme.of(context).primaryColor),
    //                   ),
    //                   Row(
    //                     children: <Widget>[
    //                       Container(
    //                         width: 27,
    //                         height: 23,
    //                         decoration: BoxDecoration(
    //                             color: Color(0xffF7CDC8),
    //                             borderRadius: BorderRadius.circular(5)),
    //                         child: Align(
    //                           alignment: Alignment.center,
    //                           child: Text(
    //                             '30%',
    //                             style: TextStyle(
    //                                 fontSize: 11,
    //                                 fontWeight: FontWeight.bold,
    //                                 // fontFamily: 'BebasNeue',
    //                                 color: Theme.of(context).primaryColor),
    //                           ),
    //                         ),
    //                       ),
    //                       Text(
    //                         'Rp 100.000',
    //                         style: TextStyle(
    //                           decoration: TextDecoration.lineThrough,
    //                           decorationColor: Colors.black,
    //                           decorationThickness: 2.5,
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                   SizedBox(
    //                     height: 2,
    //                   ),
    //                   Text(
    //                     'Rp 70.000',
    //                     style: TextStyle(fontWeight: FontWeight.bold),
    //                   ),
    //                   Text('Kretek'),
    //                   Row(
    //                     children: <Widget>[
    //                       Icon(
    //                         Icons.star,
    //                         size: 15,
    //                         color: Color(0xfff1c40f),
    //                       ),
    //                       Icon(
    //                         Icons.star,
    //                         size: 15,
    //                         color: Color(0xfff1c40f),
    //                       ),
    //                       Icon(
    //                         Icons.star,
    //                         size: 15,
    //                         color: Color(0xfff1c40f),
    //                       ),
    //                       Icon(
    //                         Icons.star,
    //                         size: 15,
    //                         color: Color(0xfff1c40f),
    //                       ),
    //                       Icon(
    //                         Icons.star_border,
    //                         size: 15,
    //                       ),
    //                     ],
    //                   )
    //                 ],
    //               ),
    //             )
    //           ],
    //         ),
    //       ),
    //     ),
    //     InkWell(
    //       onTap: () {
    //         toast();
    //       },
    //       child: Container(
    //         width: 110,
    //         decoration: BoxDecoration(
    //             color: Theme.of(context).accentColor,
    //             borderRadius: BorderRadius.circular(10),
    //             border:
    //                 Border.all(color: Theme.of(context).accentColor, width: 2)),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: <Widget>[
    //             Container(
    //               height: 130,
    //               decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.only(
    //                       topLeft: Radius.circular(10),
    //                       topRight: Radius.circular(10)),
    //                   image: DecorationImage(
    //                       image: NetworkImage(
    //                           'https://images.pexels.com/photos/1998635/pexels-photo-1998635.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
    //                       fit: BoxFit.cover)),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.all(3),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: <Widget>[
    //                   Text(
    //                     'Cup cake',
    //                     style: TextStyle(
    //                         fontWeight: FontWeight.bold,
    //                         color: Theme.of(context).primaryColor),
    //                   ),
    //                   Row(
    //                     children: <Widget>[
    //                       Container(
    //                         width: 27,
    //                         height: 23,
    //                         decoration: BoxDecoration(
    //                             color: Color(0xffF7CDC8),
    //                             borderRadius: BorderRadius.circular(5)),
    //                         child: Align(
    //                           alignment: Alignment.center,
    //                           child: Text(
    //                             '30%',
    //                             style: TextStyle(
    //                                 fontSize: 11,
    //                                 fontWeight: FontWeight.bold,
    //                                 // fontFamily: 'BebasNeue',
    //                                 color: Theme.of(context).primaryColor),
    //                           ),
    //                         ),
    //                       ),
    //                       Text(
    //                         'Rp 100.000',
    //                         style: TextStyle(
    //                           decoration: TextDecoration.lineThrough,
    //                           decorationColor: Colors.black,
    //                           decorationThickness: 2.5,
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                   SizedBox(
    //                     height: 2,
    //                   ),
    //                   Text(
    //                     'Rp 70.000',
    //                     style: TextStyle(fontWeight: FontWeight.bold),
    //                   ),
    //                   Text('Bantul'),
    //                   Row(
    //                     children: <Widget>[
    //                       Icon(
    //                         Icons.star,
    //                         size: 15,
    //                         color: Color(0xfff1c40f),
    //                       ),
    //                       Icon(
    //                         Icons.star,
    //                         size: 15,
    //                         color: Color(0xfff1c40f),
    //                       ),
    //                       Icon(
    //                         Icons.star,
    //                         size: 15,
    //                         color: Color(0xfff1c40f),
    //                       ),
    //                       Icon(
    //                         Icons.star,
    //                         size: 15,
    //                         color: Color(0xfff1c40f),
    //                       ),
    //                       Icon(
    //                         Icons.star_border,
    //                         size: 15,
    //                       ),
    //                     ],
    //                   )
    //                 ],
    //               ),
    //             )
    //           ],
    //         ),
    //       ),
    //     ),
    //     InkWell(
    //       onTap: () {
    //         toast();
    //       },
    //       child: Container(
    //         width: 110,
    //         decoration: BoxDecoration(
    //             color: Theme.of(context).accentColor,
    //             borderRadius: BorderRadius.circular(10),
    //             border:
    //                 Border.all(color: Theme.of(context).accentColor, width: 2)),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: <Widget>[
    //             Container(
    //               height: 130,
    //               decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.only(
    //                       topLeft: Radius.circular(10),
    //                       topRight: Radius.circular(10)),
    //                   image: DecorationImage(
    //                       image: NetworkImage(
    //                           'https://images.pexels.com/photos/3186654/pexels-photo-3186654.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
    //                       fit: BoxFit.cover)),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.all(3),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: <Widget>[
    //                   Text(
    //                     'Beef',
    //                     style: TextStyle(
    //                         fontWeight: FontWeight.bold,
    //                         color: Theme.of(context).primaryColor),
    //                   ),
    //                   Row(
    //                     children: <Widget>[
    //                       Container(
    //                         width: 27,
    //                         height: 23,
    //                         decoration: BoxDecoration(
    //                             color: Color(0xffF7CDC8),
    //                             borderRadius: BorderRadius.circular(5)),
    //                         child: Align(
    //                           alignment: Alignment.center,
    //                           child: Text(
    //                             '30%',
    //                             style: TextStyle(
    //                                 fontSize: 11,
    //                                 fontWeight: FontWeight.bold,
    //                                 // fontFamily: 'BebasNeue',
    //                                 color: Theme.of(context).primaryColor),
    //                           ),
    //                         ),
    //                       ),
    //                       Text(
    //                         'Rp 100.000',
    //                         style: TextStyle(
    //                           decoration: TextDecoration.lineThrough,
    //                           decorationColor: Colors.black,
    //                           decorationThickness: 2.5,
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                   SizedBox(
    //                     height: 2,
    //                   ),
    //                   Text(
    //                     'Rp 70.000',
    //                     style: TextStyle(fontWeight: FontWeight.bold),
    //                   ),
    //                   Text('Giwangan'),
    //                   Row(
    //                     children: <Widget>[
    //                       Icon(
    //                         Icons.star,
    //                         size: 15,
    //                         color: Color(0xfff1c40f),
    //                       ),
    //                       Icon(
    //                         Icons.star,
    //                         size: 15,
    //                         color: Color(0xfff1c40f),
    //                       ),
    //                       Icon(
    //                         Icons.star,
    //                         size: 15,
    //                         color: Color(0xfff1c40f),
    //                       ),
    //                       Icon(
    //                         Icons.star,
    //                         size: 15,
    //                         color: Color(0xfff1c40f),
    //                       ),
    //                       Icon(
    //                         Icons.star_border,
    //                         size: 15,
    //                       ),
    //                     ],
    //                   )
    //                 ],
    //               ),
    //             )
    //           ],
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  }
}
