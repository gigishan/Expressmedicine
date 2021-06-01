import 'package:flutter/material.dart';

class OrderCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        height: 90,
        width: double.maxFinite,
        child: Card(
          elevation: 5,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10.0, top: 10.0),
                alignment: Alignment.topLeft,
                child: Text(
                  'Order Number 1001',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600],
                      fontSize: 16.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, top: 10.0),
                alignment: Alignment.topLeft,
                child: Text(
                  'Pending',
                  style: TextStyle(color: Colors.grey[600], fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
