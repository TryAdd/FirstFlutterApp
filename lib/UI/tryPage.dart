import 'package:flutter/material.dart';
import 'package:myapp/UI/task.dart';

class TryPage extends StatefulWidget {
  @override
  _TryAddState createState() => _TryAddState();
}

class _TryAddState extends State<TryPage> {
  List<TryTask> tryitems = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
    );
  }
}
