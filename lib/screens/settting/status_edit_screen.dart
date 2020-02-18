import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/database.dart';
import 'package:flash_chat/screens/model/status.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class StatusEditScreen extends StatelessWidget {
  StatusEditScreen({this.user, this.status});

  FirebaseUser user;
  String status;

  void onStatusSelected(BuildContext context, Status status) {
    print('status: $status');
    updateProfileData(user: user, status: status.content)
        .then((e) => Navigator.pop(context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Status', style: kAppBarTextStyle),
        centerTitle: true,
        iconTheme: IconThemeData(color: kBrown),
      ),
      body: SingleChildScrollView(
        primary: true,
        child: Container(
          color: kDodgerBlue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Card(
                  color: Colors.amber[100],
                  elevation: 8.0,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 42.0),
                    child: Text(
                      status ?? 'Tell people how you doing:)',
                      textAlign: TextAlign.center,
                    ),
                  )),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                padding: EdgeInsets.all(8.0),
                primary: false,
                children: statusList
                    .map((i) => GridItem(
                        status: i,
                        onSelected: (Status statusVal) =>
                            onStatusSelected(context, statusVal)))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  GridItem({this.status, this.onSelected});

  final Status status;
  final Function(Status status) onSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onSelected(status),
      child: Card(
        elevation: 8.0,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              status.icon,
              Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(
                    status.content,
                    softWrap: true,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}