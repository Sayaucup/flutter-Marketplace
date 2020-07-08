import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:marketplace/screen/widget/food_item.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class Food extends StatefulWidget {
  final Item items;

  const Food({Key key, this.items}) : super(key: key);

  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {
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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Typicons.arrow_left,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(widget.items.name),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 10),
            child: Stack(
              children: <Widget>[
                Icon(Typicons.bell, size: 30, color: Colors.white),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    height: 17,
                    width: 17,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).primaryColor,
                        border: Border.all(
                          width: 1,
                          color: Theme.of(context).accentColor,
                        )),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '2',
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontSize: 8,
                            fontFamily: 'FredokaOne',
                          ),
                        )),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        children: <Widget>[
          Hero(
            tag: widget.items.image,
            child: Image(
              image: NetworkImage(widget.items.image),
              height: MediaQuery.of(context).size.height / 3,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              widget.items.name,
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'FredokaOne',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Row(
              children: <Widget>[
                widget.items.rating,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Text(
                    widget.items.rating2,
                    style: TextStyle(
                      fontFamily: 'FredokaOne',
                      fontSize: 14,
                    ),
                  ),
                ),
                Text('(${widget.items.review}) Review',
                    style: TextStyle(
                      fontFamily: 'FredokaOne',
                      fontSize: 14,
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              'Rp.${widget.items.price}',
              style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'FredokaOne',
                  color: Theme.of(context).primaryColor),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: OutlineButton.icon(
                      onPressed: () {
                        toast();
                      },
                      icon: Icon(EvaIcons.shoppingBagOutline),
                      label: Text('Cart')),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: RaisedButton.icon(
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        toast();
                      },
                      icon: Icon(
                        EvaIcons.creditCard,
                        color: Theme.of(context).accentColor,
                      ),
                      label: Text(
                        'Buy Now',
                        style: TextStyle(color: Theme.of(context).accentColor),
                      )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
                'Eos aperiam ut atque porro sit sit ut in dolore. Animi molestiae eaque eos quasi consequuntur quia exercitationem. Est eveniet minima voluptas eius quidem aperiam voluptatem commodi. Vitae fugit eveniet consequatur. Suscipit iure quia reprehenderit autem dolorem tenetur. Occaecati quis voluptatem et id commodi blanditiis sit odit quaerat. Occaecati voluptas earum non ut. Accusamus occaecati adipisci. Exercitationem alias maiores consequatur commodi vitae iusto dolores.Non tenetur sunt iste aut magnam corrupti ea. Accusamus laboriosam accusantium itaque minus dicta et occaecati voluptas eaque. Quis eos aspernatur natus autem dolor. Consequatur suscipit voluptatem distinctio et rerum autem.',
                style: TextStyle(
                  fontSize: 15,
                )),
          )
        ],
      ),
    );
  }
}
