import 'package:esewaPayment/services/esewa_service.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final EsewaPayment _esewaPay = EsewaPayment();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          title: Text("Esewa Payment"),
          centerTitle: true,
          actions: [
            IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.red,
                ),
                onPressed: null),
            IconButton(
              icon: Icon(
                Icons.account_circle,
                color: Colors.black,
              ),
              onPressed: null,
            )
          ],
          elevation: 0.0,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Total Amount: 800 RS',
                    style: TextStyle(fontSize: 24.0),
                  ),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusColor: Colors.transparent,
                    color: Colors.green,
                    onPressed: () {
                      print("Button Pressed");
                      _esewaPay.esewaPayment();
                    },
                    child: Text(
                      "Pay Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
