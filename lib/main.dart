import 'package:flutter/material.dart';
import 'package:inventory_management_app/src/page/app_colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        splashColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.transparent),
        accentIconTheme: IconThemeData(color: Colors.transparent),
        buttonTheme: ButtonThemeData(
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
        ),
        hoverColor: Colors.transparent,
        fontFamily: 'YuGothic',
        scaffoldBackgroundColor: AppColors.lightGray,
        accentColor: Colors.red,
      ),
      home: MyHomePage(title: '在庫一覧'),
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
//        BottomNavigationBarItem(
//          icon: ImageIcon(
//            AssetImage('assets/images/hdpi/home_tab_icon.png'),
//            color: Colors.black,
//          ),
//          title: Text(
//            'Home',
//            style: TextStyle(
//              color: Colors.black,
//            ),
//          ),
//        ),
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
//        BottomNavigationBarItem(
//          icon: ImageIcon(
//            AssetImage('assets/images/hdpi/preference_tab_icon.png'),
//            color: Colors.black,
//          ),
//          title: Text(
//            '設定',
//            style: TextStyle(
//              color: Colors.black,
//            ),
//          ),
//        )
      ],
    );
  }
}
