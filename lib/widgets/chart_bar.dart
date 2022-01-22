import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingPcOfTotal;

  ChartBar({this.label, this.spendingAmount, this.spendingPcOfTotal});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Column(
        children: <Widget>[
          Container(
              height: constraints.maxHeight * .15,
              child: FittedBox(
                  child: Text('\$${spendingAmount.toStringAsFixed(0)}'))),
          SizedBox(
            height: constraints.maxHeight * .05,
          ),
          Container(
              height: constraints.maxHeight * .6,
              width: 10,
              child: Stack(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueGrey, width: 1.0),
                    color: Color.fromRGBO(229, 102, 80, .4),
                    borderRadius: BorderRadius.circular(10),
                  )),
                  FractionallySizedBox(
                    heightFactor: spendingPcOfTotal,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColorDark,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: constraints.maxHeight * .05,
          ),
          Container(
            child: FittedBox(child: Text(label)),
            height: constraints.maxHeight * .15,
          ),
        ],
      );
    });
  }
}
