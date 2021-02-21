import 'package:flutter/material.dart';
import 'package:nextflow_navigation_tab_stack/models/contact_model.dart';
import 'package:nextflow_navigation_tab_stack/pages/contact_detail_page.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  List<ContactModel> _contacts = [
    ContactModel('Nextflow Training', '083-071-3373',
        email: 'training@nextflow.in.th'),
    ContactModel('Peter Parker', '083-071-3373'),
    ContactModel('Jonathan Pitch', '086-044-7788'),
    ContactModel('Sid Mier', '085-978-4466'),
    ContactModel('Mary Poppin', '087-689-4478'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('รายชื่อ'),
      ),
      body: ListView.builder(
        itemCount: _contacts.length,
        itemBuilder: (BuildContext context, int index) {
          ContactModel contact = _contacts[index];

          return ListTile(
            title: Text(contact.name),
            subtitle: Text(contact.tel),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return ContactDetailPage(contact);
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
