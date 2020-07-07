import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:marketplace/screen/food.dart';
import 'package:marketplace/screen/widget/food_item.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var items = [
    Item(
        "https://images.pexels.com/photos/1639557/pexels-photo-1639557.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Burger",
        '100.000',
        'Jakarta',
        Icon(Icons.star, size: 15, color: Color(0xfff1c40f))),
    Item(
        "https://images.pexels.com/photos/357573/pexels-photo-357573.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Cake",
        '100.000',
        'Jakarta',
        Icon(Icons.star, size: 15, color: Color(0xfff1c40f))),
    Item(
        "https://images.pexels.com/photos/2396220/pexels-photo-2396220.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Coffee",
        '100.000',
        'Jakarta',
        Icon(Icons.star, size: 15, color: Color(0xfff1c40f))),
    Item(
        "https://images.pexels.com/photos/257816/pexels-photo-257816.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Salad",
        '100.000',
        'Jakarta',
        Icon(Icons.star, size: 15, color: Color(0xfff1c40f))),
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
      child: GridView.count(
        physics: ClampingScrollPhysics(),
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        shrinkWrap: true,
        childAspectRatio: 1 / 1.6,
        children: items.map((items) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Food(
                            items: items,
                          )));
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 1 / 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Hero(
                        tag: items.image,
                        child: Image(
                          image: NetworkImage(items.image),
                          fit: BoxFit.cover,
                        ),
                      ),
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
                              color: Theme.of(context).primaryColor),
                        ),
                        Text(
                          'Rp.${items.price}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(items.address),
                        Row(
                          children: <Widget>[
                            items.rating,
                            items.rating,
                            items.rating,
                            items.rating,
                            Icon(Icons.star_half,
                                size: 15, color: Color(0xfff1c40f)),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );

    // return Container(
    //   margin: EdgeInsets.all(10),
    //   child: ListView.builder(
    //     physics: NeverScrollableScrollPhysics(),
    //     itemCount: items.length,
    //     shrinkWrap: true,
    //     itemBuilder: (ctx, i) {
    //       return InkWell(
    //         onTap: () {},
    //         child: Container(
    //           margin: EdgeInsets.symmetric(
    //             vertical: 5,
    //           ),
    //           child: Row(
    //             children: <Widget>[
    //               ClipRRect(
    //                 borderRadius: BorderRadius.circular(12),
    //                 child: FadeInImage(
    //                   placeholder: AssetImage("assets/img/1.jpg"),
    //                   image: NetworkImage(items[i].itemImage),
    //                   width: 150,
    //                   height: 150,
    //                   fit: BoxFit.contain,
    //                 ),
    //               ),
    //               Container(
    //                 margin: EdgeInsets.only(
    //                   left: 10,
    //                 ),
    //                 child: Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: <Widget>[
    //                     Text(
    //                       items[i].itemName,
    //                       style: TextStyle(
    //                         fontSize: 18,
    //                       ),
    //                     ),
    //                     Text(items[i].itemRestaurantName),
    //                     Text(
    //                       items[i].itemRestaurantAddress,
    //                       overflow: TextOverflow.ellipsis,
    //                     ),
    //                     Text(
    //                       items[i].itemRating,
    //                     ),
    //                     Text(
    //                       "\$${items[i].itemPrice}",
    //                       style: TextStyle(
    //                         color: Theme.of(context).primaryColor,
    //                         fontSize: 18,
    //                         fontWeight: FontWeight.bold,
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
