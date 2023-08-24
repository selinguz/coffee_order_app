//import 'dart:convert';
//import 'package:coffee_order/models/dto_product.dart';
import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
import '../coffee.dart';
import '../constants.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../widgets/coffee_item.dart';

class Coffees extends StatefulWidget {
  const Coffees({super.key});

  @override
  State<Coffees> createState() => _CoffeesState();
}

class _CoffeesState extends State<Coffees> {
  int pagesActiveIndex = 0;
  int selectedCoffeeNumber = 1;

  List<Coffee> coffees = [
    Coffee('Espresso', 10.0, MdiIcons.coffeeOutline),
    Coffee('Latte', 12.0, MdiIcons.coffee),
    Coffee('Americano', 14.0, MdiIcons.coffeeMaker),
    Coffee('Mahmut', 14.0, MdiIcons.coffeeMaker),
  ];

  /* List<Dto_Product> productList = [];

  Future<void> getData() async {
    var request =
        http.Request('GET', Uri.parse('https://dummyjson.com/products'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      String data = await response.stream.bytesToString();
      Map<String, dynamic> jsonMap = json.decode(data);
      List jsonList = jsonMap['products'];

      productList =
          jsonList.map((value) => Dto_Product.fromJson(value)).toList();
      //productList.add(product);
    } else {
      print(response.reasonPhrase);
    }
  } */

  @override
  initState() {
    // getData().then((value) {
    //   setState(() {});
    // });
    super.initState();
  }

  dynamic tabBuilder;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Choose Your Drink',
          style: TextStyle(fontSize: 22),
        ),
        backgroundColor: appBarBackgroundColor,
      ),
      body: Container(
          color: pageBackgroundColor,
          child: ListView.builder(
              itemCount: coffees.length,
              itemBuilder: (context, index) {
                //var item = productList[index];
                // return ListTile(
                //   title: Text(item.title!),
                // );
                return CoffeeItem(coffee: coffees[index]);
              })),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _onAlertButtonsPressed(context);
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
        elevation: 20.0,
        backgroundColor: appBarBackgroundColor,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
              color: Colors.white,
            ),
            IconButton(
              icon: Icon(Icons.layers),
              onPressed: () {},
              color: Colors.white,
            ),
            IconButton(
              icon: Icon(Icons.dashboard),
              onPressed: () {},
              color: Colors.white,
            ),
            IconButton(
              icon: Icon(Icons.info),
              onPressed: () {},
              color: Colors.white,
            ),
          ],
        ),
        //notchMargin: 1.0,
        //notchedShape: const CircularNotchedRectangle(),
        color: appBarBackgroundColor,
      ),

      //other params
    );


  }

  _onAlertButtonsPressed(context) {
    Alert(
      style: AlertStyle(backgroundColor: pageBackgroundColor),
      context: context,
      type: AlertType.info,
      title: "Message",
      desc: coffees[0].name + ' will be added to your'
          ' cart.',
      buttons: [
        DialogButton(
          color: appBarBackgroundColor,
          child: Text(
            "YES",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          onPressed: () {
            setState(() {
              Alert(
                style:
                AlertStyle(backgroundColor: pageBackgroundColor),
                context: context,
                type: AlertType.success,
                title: "Message",
                desc: "Added to your cart successfully",
                buttons: [
                  DialogButton(
                    color: appBarBackgroundColor,
                    child: Text(
                      "OK",
                      style: TextStyle(
                          color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil<dynamic>(
                        context,
                        MaterialPageRoute<dynamic>(
                          builder: (BuildContext context) =>
                              Coffees(),
                        ),
                            (route) => false,
                      );
                    },
                    width: 120,
                  )
                ],
              ).show();
            });
          },
        ),
        DialogButton(
            color: appBarBackgroundColor,
            child: Text(
              "NO",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            onPressed: () {
              setState(() {
                Alert(
                  style: AlertStyle(
                      backgroundColor: pageBackgroundColor),
                  context: context,
                  type: AlertType.error,
                  title: "Message",
                  desc: "Adding to cart is cancelled",
                  buttons: [
                    DialogButton(
                      color: appBarBackgroundColor,
                      child: Text(
                        "OK",
                        style: TextStyle(
                            color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () =>
                          Navigator.pushAndRemoveUntil<dynamic>(
                            context,
                            MaterialPageRoute<dynamic>(
                              builder: (BuildContext context) =>
                                  Coffees(),
                            ),
                                (route) =>
                            false, //if you want to disable back feature set to false
                          ),
                      width: 120,
                    )
                  ],
                ).show();
              });
            })
      ],
    ).show();
  }
}

