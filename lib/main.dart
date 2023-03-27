import 'package:flutter/material.dart';
//import 'item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pestaña TapBar',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} //statefulWidget con estado

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.pinkAccent),
            tabs: [
              Tab(icon: Icon(Icons.access_time)),
              Tab(icon: Icon(Icons.account_circle_outlined)),
              Tab(icon: Icon(Icons.add_box_sharp)),
              Tab(icon: Icon(Icons.abc)),
            ],
          ),
          centerTitle: true,
          title: Text('Liverpool'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.access_time, size: 350),
            Icon(Icons.account_circle_outlined, size: 350),
            Icon(Icons.add_box_sharp, size: 350),
            Icon(Icons.abc, size: 350),
          ],
        ),
      ),
    );
  } //widget BuildContext
} //_MyHomePageState
