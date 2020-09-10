import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:marketplace/screen/widget/food_item.dart';
import 'package:marketplace/utils/helper.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class Food extends StatefulWidget {
  final Item items;

  const Food({Key key, this.items}) : super(key: key);

  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {
  final dbHelper = DatabaseHelper.instance;
  var cart;
  GlobalKey<ScaffoldState> scaffoldKey;
  void toast1() {
    Fluttertoast.showToast(
        msg: "In Progress",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Theme.of(context).primaryColor,
        textColor: Colors.white,
        fontSize: 15);
  }

  void toast() {
    Fluttertoast.showToast(
        msg: "Your item has been added to your cart",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: Theme.of(context).primaryColor,
        textColor: Colors.white,
        fontSize: 15);
  }

  String hargaa = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scaffoldKey = GlobalKey<ScaffoldState>();
  }

  int selectedd = 1;

  Widget chip(String name, int i) {
    return ChoiceChip(
      selectedColor: selectedd == i
          ? Theme.of(context).primaryColor
          : Theme.of(context).accentColor,
      elevation: 5,
      label: Text(name,
          style: selectedd == i
              ? TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)
              : TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      selected: selectedd == i,
      onSelected: (bool selected) {
        setState(() {
          selectedd = i;
        });
      },
    );
  }

  keranjang(namaProduk, harga, image) async {
    // harga = int.parse(harga);
    // int count = await dbHelper.queryRowCountWhere(namaProduk);
    // print(count);

    // int jumlah;
    // int hargaBefore;
    // final where = await dbHelper.queryWhere(namaProduk);
    // if (count > 0) {
    //   where.forEach((row) => jumlah = row['jumlah']);
    //   where.forEach((row) => hargaBefore = row['harga']);
    //   Map<String, dynamic> row = {
    //     DatabaseHelper.columnJumlah: jumlah + 1,
    //     DatabaseHelper.columnHarga: hargaBefore + harga
    //   };
    //   await dbHelper.update(row);
    //   print('nambah jumlah');
    // } else {
    Map<String, dynamic> row = {
      DatabaseHelper.columnNamaProduk: namaProduk,
      DatabaseHelper.columnHarga: harga,
      DatabaseHelper.columnImage: image,
      DatabaseHelper.columnJumlah: 1,
    };
    await dbHelper.insert(row);
    print('nambah barang');
    // }
    scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text('The item has been added to the cart...'),
    ));
  }

  harga() {
    if (selectedd == 1) {
      setState(() {
        hargaa = widget.items.price;
      });
      return Text(
        'Rp.${widget.items.price}',
        style: TextStyle(
            fontSize: 30,
            fontFamily: 'FredokaOne',
            color: Theme.of(context).primaryColor),
      );
    } else if (selectedd == 2) {
      setState(() {
        hargaa = widget.items.price2;
      });
      return Text(
        'Rp.${widget.items.price2}',
        style: TextStyle(
            fontSize: 30,
            fontFamily: 'FredokaOne',
            color: Theme.of(context).primaryColor),
      );
    } else if (selectedd == 3) {
      setState(() {
        hargaa = widget.items.price3;
      });
      return Text(
        'Rp.${widget.items.price3}',
        style: TextStyle(
            fontSize: 30,
            fontFamily: 'FredokaOne',
            color: Theme.of(context).primaryColor),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        floatingActionButton: FloatingActionButton(
          elevation: 0,
          backgroundColor: Theme.of(context).primaryColor,
          tooltip: 'Cart',
          child: Icon(
            Typicons.shopping_cart,
            size: 30,
            color: Theme.of(context).accentColor,
          ),
          onPressed: () {
            keranjang(widget.items.name, hargaa, widget.items.image);
          },
        ),
        appBar: AppBar(
          elevation: 0,
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: widget.items.image,
              child: Image(
                image: NetworkImage(widget.items.image),
                height: MediaQuery.of(context).size.height / 2.5,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15),
              child: Text(
                widget.items.name,
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'FredokaOne',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: <Widget>[
                  widget.items.rating,
                  Text('(${widget.items.review}) Review',
                      style: TextStyle(
                        fontFamily: 'FredokaOne',
                        fontSize: 15,
                      ))
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 15),
            //   child: Text(
            //     'Rp.${widget.items.price}',
            //     style: TextStyle(
            // fontSize: 35,
            // fontFamily: 'FredokaOne',
            // color: Theme.of(context).primaryColor),
            //   ),
            // ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                child: harga()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Eos aperiam ut atque porro sit sit ut in dolore. Animi molestiae eaque eos quasi consequuntur quia exercitationem.',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 15),
              child: Wrap(
                spacing: 10,
                children: <Widget>[
                  chip('Regular', 1),
                  chip('Medium', 2),
                  chip('Large', 3),
                ],
              ),
            ),
          ],
        ));
  }
}
