import 'package:coffee_order/coffee.dart';
import 'package:flutter/material.dart';
import 'package:quantity_input/quantity_input.dart';

class CoffeeItem extends StatefulWidget {
  final Coffee coffee;

  const CoffeeItem({super.key, required this.coffee});

  @override
  State<CoffeeItem> createState() => _CoffeeItemState();
}

class _CoffeeItemState extends State<CoffeeItem> {
  int simpleIntInput = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        //crossAxisAlignment: CrossAxisAlignment.end,
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              QuantityInput(
                buttonColor: Colors.brown[400],
                inputWidth: 60,
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  hoverColor: Colors.black,
                  border: InputBorder.none,

                ),
                acceptsZero: true,
                onChanged: (value) => setState(() =>
                    simpleIntInput = int.parse(value.replaceAll(',', ''))),
                value: simpleIntInput,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
