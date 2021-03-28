import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData( primarySwatch: Colors.teal ),
      home: MyHomePage(title: 'Fundamentos Programação Aplicada'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() { _counter++; });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar( title: Text(widget.title) ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text( 'This is a headline', style: Theme.of(context).textTheme.headline ),
            Text( 'This is a headline1', style: Theme.of(context).textTheme.headline1 ),
            Text( 'This is a headline2', style: Theme.of(context).textTheme.headline2 ),
            Text( 'This is a headline3', style: Theme.of(context).textTheme.headline3 ),
            Text( 'This is a headline4', style: Theme.of(context).textTheme.headline4 ),
            Text( 'This is a headline5', style: Theme.of(context).textTheme.headline5 ),
            Text( 'This is a headline6', style: Theme.of(context).textTheme.headline6 ),
            Text( 'You have pressed the button this many times:' ),
            Text( '$_counter', style: Theme.of(context).textTheme.headline4 ),
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
