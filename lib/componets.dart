import 'package:flutter/material.dart';
import 'package:flutter_cash_app_tut/pages/income.dart';
import 'package:flutter_cash_app_tut/pages/expense.dart';
import 'package:flutter_cash_app_tut/pages/category.dart';

class AlertComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
//                                this is the button to add new income
        new Row(
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(Icons.attach_money),
            ),
            new Padding(
              padding: EdgeInsets.all(2.0),
              child: new MaterialButton(
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Income()));
                },
                child: new Text("Income"),
              ),
            )
          ],
        ),

//                                the button to add new expense
        new Row(
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(Icons.money_off),
            ),
            new Padding(
              padding: EdgeInsets.all(2.0),
              child: new MaterialButton(
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Expense()));
                },
                child: new Text("Expense"),
              ),
            )
          ],
        ),

//                                this is the button to add a new category
        new Row(
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(Icons.dashboard),
            ),
            new Padding(
              padding: EdgeInsets.all(2.0),
              child: new MaterialButton(
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Category()));
                },
                child: new Text("Category"),
              ),
            )
          ],
        ),
      ],
    );
  }
}
