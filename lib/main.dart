import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
  _MyHomePageState createState() {
    print("**********Create State");
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();

    print("************Init State");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    print("***********Did Change Dependencies");
  }

  @override
  void didUpdateWidget(MyHomePage oldWidget) {
    super.didUpdateWidget(oldWidget);

    print("***********Did Update Widget");
  }

  @override
  void deactivate() {
    super.deactivate();

    print("***********Deactivate");
  }

  void _incrementCounter() {
    setState(() {
      print("***********Set State");
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("**********Build");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            textWidget(),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
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

class textWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("++++++++++++Text Widget Build");
    return Text(
      'You have pushed the button this many times:',
    );
  }
}
