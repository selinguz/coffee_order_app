import 'package:coffee_order/coffee.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CoffeeItem extends StatefulWidget {
  
 final Coffee coffee;
 const CoffeeItem({super.key,required this.coffee});

  @override
  State<CoffeeItem> createState() => _CoffeeItemState();
}

class _CoffeeItemState extends State<CoffeeItem> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 1,
            child: Icon(
              widget.coffee.icon,
              color: Colors.brown[600],
              size: 30,
            ),
          ),
          Expanded(
            flex: 3,
            child: GestureDetector(
              child: Text(
                widget.coffee.name,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Text(count.toString()),
          IconButton(
            onPressed: () {
              setState(() {
               count++;
              });
            },
            icon: Icon(MdiIcons.plusThick),
            iconSize: 28,
            color: Colors.brown,
          ),
        ],
      ),
    );
  }
}