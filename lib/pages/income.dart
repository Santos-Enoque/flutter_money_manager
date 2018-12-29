import 'package:flutter/material.dart';
import 'package:flutter_cash_app_tut/componets.dart';
import 'package:flutter_cash_app_tut/pages/home.dart';


class Income extends StatefulWidget {
  @override
  _IncomeState createState() => _IncomeState();
}

class _IncomeState extends State<Income> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Income"),
        backgroundColor: Colors.deepOrange,
        centerTitle: false,
        elevation: 1.0,
        actions: <Widget>[

          new IconButton(icon: Icon(Icons.home), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
          }),


          new IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
//                this will call the alert
                showDialog(
                    context: context,
                    builder: (context) => new AlertDialog(
                      title: new Text("add"),
                      content: new Container(
                        height: 120.0,
                        child: new AlertComponents()
                      ),
                    ));
              }),


        ],
      ),

//      NavigationBar
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text("Balance:"),
                subtitle: new Text("\$720"),
              ),
            ),
            Expanded(
              child: ListTile(
                title: new Text("Expense:"),
                subtitle: new Text(
                  "\$230",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
            Expanded(
                child: new IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.deepOrange,
                    ),
                    onPressed: () {})),
          ],
        ),
      ),
    );
  }
}
