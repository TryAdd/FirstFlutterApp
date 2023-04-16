import 'package:flutter/material.dart';

class TryTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: new MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: new Scaffold(
            body: Container(
              padding: EdgeInsets.only(left: 50),
              height: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(70),
                  bottomRight: Radius.circular(70),
                ),
                color: Colors.black,
              ),
            ),
            appBar: new AppBar(
              backgroundColor: Colors.black,
            )),
      ),
    );
  }
}
