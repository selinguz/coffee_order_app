import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class Coffees extends StatefulWidget {
  const Coffees({super.key});

  @override
  State<Coffees> createState() => _CoffeesState();
}

class _CoffeesState extends State<Coffees> {
  final iconList = <IconData>[
    Icons.brightness_5,
    Icons.brightness_4,
    Icons.brightness_6,
    Icons.brightness_7,
  ];

  dynamic tabBuilder;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Choose Your Drink',
          style: TextStyle(fontSize: 22),
        ),
        backgroundColor: appBarBackgroundColor,
      ),
      body: Container(
        color: pageBackgroundColor,
        child: ListView(
          children: ListTile.divideTiles(
            context: context,
            tiles: [
              ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                visualDensity: VisualDensity(vertical: 4),
                leading: Icon(MdiIcons.coffeeOutline,
                    color: Colors.brown[600], size: 30),
                title: GestureDetector(
                  child: Text(
                    'Espresso',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {},
                ),
                trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      _onAlertButtonsPressed(context);
                    });
                  },
                  icon: Icon(MdiIcons.plusThick),
                  iconSize: 28,
                  color: Colors.brown,
                ),
              ),
              ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                visualDensity: VisualDensity(vertical: 4),
                leading:
                    Icon(MdiIcons.coffee, color: Colors.brown[600], size: 30),
                title: GestureDetector(
                  child: Text(
                    'Latte',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {},
                ),
                trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      _onAlertButtonsPressed(context);
                    });
                  },
                  icon: Icon(MdiIcons.plusThick),
                  iconSize: 28,
                  color: Colors.brown,
                ),
              ),
              ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                visualDensity: VisualDensity(vertical: 4),
                leading: Icon(
                  MdiIcons.coffeeMaker,
                  color: Colors.brown[600],
                  size: 30,
                ),
                title: GestureDetector(
                  child: Text(
                    'Americano',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {},
                ),
                trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      _onAlertButtonsPressed(context);
                    });
                  },
                  icon: Icon(MdiIcons.plusThick),
                  iconSize: 28,
                  color: Colors.brown,
                ),
              ),
              ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                visualDensity: VisualDensity(vertical: 4),
                leading: Icon(MdiIcons.tea, color: Colors.brown[600], size: 30),
                title: GestureDetector(
                  child: Text(
                    'Herbal Tea',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {},
                ),
                trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      _onAlertButtonsPressed(context);
                    });
                  },
                  icon: Icon(MdiIcons.plusThick),
                  iconSize: 28,
                  color: Colors.brown,
                ),
              ),
              ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                visualDensity: VisualDensity(vertical: 4),
                leading:
                    Icon(MdiIcons.water, color: Colors.brown[600], size: 30),
                title: GestureDetector(
                  child: Text(
                    'Water',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {},
                ),
                trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      _onAlertButtonsPressed(context);
                    });
                  },
                  icon: Icon(MdiIcons.plusThick),
                  iconSize: 28,
                  color: Colors.brown,
                ),
              ),
            ],
          ).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.brown,
        child: Icon(
          MdiIcons.cart,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconList.length,
        backgroundColor: appBarBackgroundColor,
        tabBuilder: (int index, bool isActive) {
          final color = isActive ? Colors.white : Colors.black;
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconList[index],
                size: 24,
                color: color,
              ),
              const SizedBox(height: 4),
            ],
          );
        },
        activeIndex: 0,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        onTap: (index) {},
      ),
    );
  }

  _onAlertButtonsPressed(context) {
    Alert(
      style: AlertStyle(backgroundColor: pageBackgroundColor),
      context: context,
      type: AlertType.info,
      title: "Message",
      desc: "The drink will be added to your cart.",
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
                style: AlertStyle(backgroundColor: pageBackgroundColor),
                context: context,
                type: AlertType.success,
                title: "Message",
                desc: "Added to your cart successfully",
                buttons: [
                  DialogButton(
                    color: appBarBackgroundColor,
                    child: Text(
                      "OK",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () => Navigator.pushAndRemoveUntil<dynamic>(
                      context,
                      MaterialPageRoute<dynamic>(
                        builder: (BuildContext context) => Coffees(),
                      ),
                      (route) =>
                          false, //if you want to disable back feature set to false
                    ),
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
                  style: AlertStyle(backgroundColor: pageBackgroundColor),
                  context: context,
                  type: AlertType.error,
                  title: "Message",
                  desc: "Adding to cart is cancelled",
                  buttons: [
                    DialogButton(
                      color: appBarBackgroundColor,
                      child: Text(
                        "OK",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () => Navigator.pushAndRemoveUntil<dynamic>(
                        context,
                        MaterialPageRoute<dynamic>(
                          builder: (BuildContext context) => Coffees(),
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
