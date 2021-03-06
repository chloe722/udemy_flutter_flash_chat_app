import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/constants.dart';
import 'package:flash_chat/database.dart';
import 'package:flash_chat/widgets/info_editing_card.dart';
import 'package:flutter/material.dart';

class AboutEditScreen extends StatelessWidget {
  AboutEditScreen({this.user, this.about});

  final FirebaseUser user;
  final String about;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSalmon,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: kSalmon,
          title: Text('About', style: kAppBarTextStyle),
          centerTitle: true,
          iconTheme: IconThemeData(color: kBrown),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Center(
            child: InfoEditingCard(
                content: about,
                icon: Icons.info,
                onTap: (String aboutVal) =>
                    updateProfileData(user: user, about: aboutVal)
                        .then((e) => Navigator.pop(context))),
          ),
        ));
  }
}
