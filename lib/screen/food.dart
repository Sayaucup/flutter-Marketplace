import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:marketplace/screen/widget/food_item.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class Food extends StatelessWidget {
  final Item items;

  const Food({Key key, this.items}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Typicons.arrow_left,
                    size: 25,
                    color: Theme.of(context).primaryColor,
                  )),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width - 90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 1),
                      )
                    ]),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),
                      child: Icon(
                        Ionicons.ios_search,
                        size: 25,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        style: TextStyle(fontSize: 17, color: Colors.black54),
                        textInputAction: TextInputAction.search,
                        // controller: _controller,
                        autocorrect: true,
                        cursorColor: Theme.of(context).primaryColor,
                        toolbarOptions: ToolbarOptions(
                            copy: true,
                            paste: true,
                            cut: true,
                            selectAll: true),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: 'Find a products',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: <Widget>[
                  Icon(
                    Typicons.bell,
                    size: 30,
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).primaryColor,
                          border: Border.all(width: 1, color: Colors.white)),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '2',
                            style: TextStyle(color: Colors.white, fontSize: 8),
                          )),
                    ),
                  )
                ],
              )
            ],
          ),
          Hero(
            tag: items.image,
            child: Image(
              image: NetworkImage(items.image),
              height: MediaQuery.of(context).size.height / 3,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              items.name,
              style: TextStyle(fontSize: 22),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Rp.${items.price}',
              style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'FredokaOne',
                  color: Theme.of(context).primaryColor),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: OutlineButton.icon(
                      onPressed: () {},
                      icon: Icon(EvaIcons.shoppingBagOutline),
                      label: Text('Cart')),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: RaisedButton.icon(
                      color: Theme.of(context).primaryColor,
                      onPressed: () {},
                      icon: Icon(EvaIcons.creditCard),
                      label: Text(
                        'Buy Now',
                        style: TextStyle(color: Theme.of(context).accentColor),
                      )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
