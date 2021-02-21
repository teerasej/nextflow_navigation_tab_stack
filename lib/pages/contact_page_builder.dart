import 'package:flutter/material.dart';
import 'package:nextflow_navigation_tab_stack/pages/contact_page.dart';

class ContactPageBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => ContactPage(),
          settings: settings,
        );
      },
    );
  }
}
