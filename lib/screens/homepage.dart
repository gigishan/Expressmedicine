import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:localstorage/localstorage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginpage/main.dart';
import 'package:loginpage/models/Addcard.dart';
import 'package:loginpage/ordertracking/ordertrack.dart';
import 'package:loginpage/screens/login.dart';
import 'package:loginpage/screens/ordercards.dart';
import 'package:loginpage/screens/profilepage.dart';
import 'package:loginpage/screens/selectpharmacypage.dart';
import 'package:loginpage/screens/uploadpage.dart';
import 'package:loginpage/services/auth.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final LocalStorage storage = new LocalStorage('MEDICINEAPP');
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EXPRESSMEDICINE'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        elevation: 0.0,
        leading: IconButton(
          color: Colors.lightBlue,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.logout),
            onPressed: () {
              storage.clear();
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 40.0,
            ),
            Container(
              height: 250,
              width: 250,
              alignment: Alignment.topCenter,
              child: Image(image: AssetImage('assets/images/medicine.png')),
            ),
            SizedBox(
              height: 1.0,
            ),
            Container(
              height: 70.0,
              width: 200.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              SelectPharmacyPage()));
                },
                child: Material(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.lightBlue,
                  child: Center(
                    child: Text(
                      'UPLOAD PRESCRIPTION',
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 70.0,
              width: 200.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => OrderCards()));
                },
                child: Material(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.lightBlue,
                  child: Center(
                    child: Text(
                      'ORDERS',
                      style: TextStyle(fontSize: 19.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 70.0,
              width: 200.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => ProfilePage()));
                },
                child: Material(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.lightBlue,
                  child: Center(
                    child: Text(
                      'PROFILE',
                      style: TextStyle(fontSize: 19.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80.0,
            ),
            Container(
              child: Text('www.expressmedicine.tk',
                  style: TextStyle(fontSize: 12.0, color: Colors.black54)),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              child: Text('EXPRESS MEDICINE Pvt Ltd',
                  style: TextStyle(fontSize: 10.0, color: Colors.black54)),
            )
          ],
        ),
      ),
    );
  }
}
