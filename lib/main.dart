import 'package:flutter/material.dart';
import 'package:nextflow_navigation_tab_stack/pages/contact_page.dart';
import 'package:nextflow_navigation_tab_stack/pages/contact_page_builder.dart';
import 'package:nextflow_navigation_tab_stack/pages/setting_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nextflow Flutter Nav Tab Stack',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Contact'),
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
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: TabBarView(
          children: [
            ContactPageBuilder(),
            SettingPage(),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(
              text: 'รายชื่อ',
            ),
            Tab(
              text: 'ตั้งค่า',
            )
          ],
        ),
      ),
    );
  }
}
