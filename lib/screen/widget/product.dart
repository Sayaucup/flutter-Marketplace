import 'package:flutter/material.dart';

class ItemModel {
  final String itemId;
  final String itemName;
  final String itemImage;
  final String itemPrice;
  final String itemRating;
  final String itemRestaurantName;
  final String itemRestaurantAddress;

  ItemModel(
      {this.itemId,
      this.itemName,
      this.itemImage,
      this.itemPrice,
      this.itemRating,
      this.itemRestaurantName,
      this.itemRestaurantAddress});
}

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var items = [
    ItemModel(
        itemId: "1",
        itemImage:
            "https://images.pexels.com/photos/1639557/pexels-photo-1639557.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        itemName: "Burger",
        itemPrice: "1.99",
        itemRating: "4.4",
        itemRestaurantAddress: "Times Square, NY, California",
        itemRestaurantName: "Will's Pizza Shop"),
    ItemModel(
        itemId: "2",
        itemImage:
            "https://images.pexels.com/photos/357573/pexels-photo-357573.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        itemName: "Cake",
        itemPrice: "10",
        itemRating: "4.9",
        itemRestaurantAddress: "65187 Rosenbaum Rest",
        itemRestaurantName: "Have More 🙃"),
    ItemModel(
        itemId: "3",
        itemImage:
            "https://images.pexels.com/photos/2396220/pexels-photo-2396220.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        itemName: "Coffee",
        itemPrice: "1.99",
        itemRating: "4.0",
        itemRestaurantAddress: "4795 Susie Throughway",
        itemRestaurantName: "Star Cafe"),
    ItemModel(
        itemId: "4",
        itemImage:
            "https://images.pexels.com/photos/257816/pexels-photo-257816.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        itemName: "Salad",
        itemPrice: "2",
        itemRating: "4.5",
        itemRestaurantAddress: "212 Lisandro Harbor",
        itemRestaurantName: "Grandpa's Restaurant"),
  ];

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
        children: items.map((product) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 1 / 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: NetworkImage(product.itemImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(product.itemName),
                Text(product.itemRestaurantName),
                Text(
                  '${product.itemPrice}\$',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.amber),
                ),
              ],
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
