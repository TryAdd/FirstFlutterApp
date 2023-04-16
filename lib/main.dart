import 'package:flutter/material.dart';
import 'package:myapp/UI/task.dart';
import 'package:myapp/UI/tryPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'TryAdd';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
// bar
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: new MaterialApp(
        debugShowCheckedModeBanner: false,
        color: Colors.cyan,
        home: DefaultTabController(
          length: 3,
          child: new Scaffold(
            body: Stack(children: <Widget>[
              TabBarView(
                children: [
                  TryPage(),
                  new Container(
                    color: Colors.grey[850],
                  ),
                  new Container(
                    color: Colors.grey[900],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 50),
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70),
                      bottomRight: Radius.circular(70)),
                  color: Colors.black,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[Text('TryAdd'), Container()],
                ),
              ),
              Container(
                height: 70,
                width: 70,
                margin: EdgeInsets.only(
                    top: 130,
                    left: MediaQuery.of(context).size.width * 0.5 - 40),
                child: FloatingActionButton(
                  child: Icon(
                    Icons.add,
                    size: 40,
                  ),
                  backgroundColor: Colors.cyan,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TryTask()));
                  },
                ),
              )
            ]),
            appBar: new TabBar(
              tabs: [
                Tab(
                  icon: new Icon(Icons.home),
                ),
                Tab(
                  icon: new Icon(Icons.favorite),
                ),
                Tab(
                  icon: new Icon(Icons.settings),
                ),
              ],
              labelColor: Colors.cyan[400],
              unselectedLabelColor: Colors.grey[900],
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.transparent,
            ),
            backgroundColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
