import 'package:flutter/material.dart';
import 'package:nextflow_navigation_tab_stack/models/contact_model.dart';

class ContactDetailPage extends StatelessWidget {
  final ContactModel contact;

  ContactDetailPage(this.contact);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(contact.name),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                onPressed: () {},
                child: Text('โทร ${contact.tel}'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
