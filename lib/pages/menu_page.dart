import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Coffees extends StatefulWidget {
  const Coffees({super.key});

  @override
  State<Coffees> createState() => _CoffeesState();
}

class _CoffeesState extends State<Coffees> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Choose Your Coffee',
          style: TextStyle(fontSize: 24),
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
                leading: FaIcon(FontAwesomeIcons.mugHot,color: Colors.brown[600],size: 28,),
                title: GestureDetector(
                  child: Text('Espresso'),
                  onTap: () {},
                ),
                trailing: Icon(Icons.more_vert),
              ),
              ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                visualDensity: VisualDensity(vertical: 4),
                leading: FaIcon(FontAwesomeIcons.mugSaucer,color: Colors.brown[600],),
                title: GestureDetector(
                  child: Text('Latte'),
                  onTap: () {},
                ),
                trailing: Icon(Icons.more_vert),
              ),
              ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                visualDensity: VisualDensity(vertical: 4),
                leading: Icon(MdiIcons.coffeeMaker,color: Colors.brown[600],size: 28,),
                title: GestureDetector(
                  child: Text('Americano'),
                  onTap: () {},
                ),
                trailing: Icon(Icons.more_vert),
              ),
              ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                visualDensity: VisualDensity(vertical: 4),
                leading: Icon(MdiIcons.tea,color: Colors.brown[600],size:28),
                title: GestureDetector(
                  child: Text('Herbal Tea'),
                  onTap: () {},
                ),
                trailing: Icon(Icons.more_vert),
              ),
              ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                visualDensity: VisualDensity(vertical: 4),
                leading: Icon(MdiIcons.water,color: Colors.brown[600],size:32),
                title: GestureDetector(
                  child: Text('Water'),
                  onTap: () {},
                ),
                trailing: Icon(Icons.more_vert),
              ),
            ],
          ).toList(),
        ),
      ),
    );
  }
}
