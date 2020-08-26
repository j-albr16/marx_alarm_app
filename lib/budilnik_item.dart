import 'package:flutter/material.dart';

class BudilnikItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      flex: 1,
      child: Container(
        margin: EdgeInsets.all(6),
        color: Colors.yellowAccent,
        child: Container(
          margin: EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(14)
          ),
          child: Column(
            children: [
              Container(
                child: Row(children: <Widget>[
                    Flexible(child: Text('12:30'))
                ],),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
