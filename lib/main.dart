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
      home: MyHomePage(title: 'Home'),
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
//    setState(() {
//    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      bottomNavigationBar: _bottomNavigationBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'a',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/images/hdpi/home_tab_icon.png'),
            color: Colors.black,
          ),
          title: Text(
            'Home',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/images/hdpi/list_tab_icon.png'),
            color: Colors.black,
          ),
          title: Text(
            '一覧',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/images/hdpi/add_tab_icon.png'),
            color: Colors.black,
          ),
          title: Text(
            '追加',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/images/hdpi/preference_tab_icon.png'),
            color: Colors.black,
          ),
          title: Text(
            '設定',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
