import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//stateless function - when performing hot reload it will only runs through the codes which is inside of the StatelessWidget
//for create a stateless widget simply type "stless"
//in order to perform hot reload you need stateless or stateful widgets
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int nDonuts = 0;

  void _incrementCounter() {
    setState(() {
      nDonuts++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[300],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Number of donuts eaten:',
              style: TextStyle(
                fontSize: 40.0,
              ),
            ),
            Text(
              '$nDonuts',
              style: TextStyle(
                fontSize: 40.0,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
