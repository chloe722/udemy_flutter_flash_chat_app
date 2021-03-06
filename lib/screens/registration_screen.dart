import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/auth.dart';
import 'package:flash_chat/strings.dart';
import 'package:flash_chat/widgets/input_section.dart';
import 'package:flash_chat/widgets/round_button.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = 'registeration_screen';

  RegistrationScreen({this.auth, this.logInCallback});

  final BaseAuth auth;
  final VoidCallback logInCallback;

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String email = "";
  String password = "";
  FirebaseUser _user;
  String _errorMsg = "";
  bool _isLoading = true;

  void submit() async {
    setState(() {
      _errorMsg = "";
      _isLoading = true;
    });

    try {
      _user = await widget.auth.register(email: email, password: password);

      setState(() {
        _isLoading = false;
      });

      if (_user != null && _user.uid != null && _user.uid.length > 0) {
        widget.logInCallback();
        Navigator.pop(context);
      }
    } catch (e) {
      print(e);
      _isLoading = false;
      _errorMsg = e.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Flexible(
              child: Hero(
                tag: kLogoTag,
                child: Container(
                  height: 200.0,
                  child: Image.asset(kLogoImage),
                ),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            InputSection(
              hint: kEnterEmailHint,
              color: Colors.blueAccent,
              onChange: (value) {
                email = value;
              },
            ),
            SizedBox(
              height: 8.0,
            ),
            InputSection(
              hint: kEnterPwdHint,
              color: Colors.blueAccent,
              obscureText: true,
              onChange: (value) {
                password = value;
              },
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundButton(
                color: Colors.blueAccent,
                label: kRegister,
                onPressed: () => submit()),
          ],
        ),
      ),
    );
  }
}
