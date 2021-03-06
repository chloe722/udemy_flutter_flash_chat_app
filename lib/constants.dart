import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.blueGrey,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
  filled: true
);

const kMessageContainerDecoration = BoxDecoration(
  color: Colors.white,
//  border: Border(
//    top: BorderSide(color: Colors.grey, width: 1.0),
//  ),
);


//TODO change to const
final kEditingTextFormFieldDecoration = InputDecoration(
    filled: true,
    border: OutlineInputBorder(
        borderSide: BorderSide(
            width: 0.0, style: BorderStyle.none),
        borderRadius: BorderRadius.circular(8.0)),

    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
            width: 0.0, style: BorderStyle.none),
        borderRadius: BorderRadius.circular(8.0)),
    fillColor: Colors.grey[200]);

const kTextFieldDecoration = InputDecoration(
  hintStyle: TextStyle(color: Colors.grey),
  hintText: '',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

const kTextFieldSettingDecoration = InputDecoration(
  hintStyle: TextStyle(color: Colors.black87),
  labelText: '',
  fillColor: Colors.white70,
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(24.0)),
  ),
//  enabledBorder: OutlineInputBorder(
//    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
//    borderRadius: BorderRadius.all(Radius.circular(32.0)),
//  ),
//  focusedBorder: OutlineInputBorder(
//    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
//    borderRadius: BorderRadius.all(Radius.circular(32.0)),
//  ),
);

const kAppBarTextStyle = TextStyle(color: kNavajowhite);

const Color kBrown = Color(0xFF5D4037);
const Color kDodgerBlue = Color(0xFF36a5dd);
const Color kBurlywook = Color(0xFFe6a88b);
const Color kNavajowhite = Color(0xFFfad1af);
const Color kFirebrick = Color(0xFF9c1913);
const Color kOliverdrib = Color(0xFF6ab440);
const Color kGreyBlack = Color(0xFF4A4E4D);
const Color kBlurYellow = Color(0xFFF6CD61);
const Color kVerdigris = Color(0xFF3DA4AB);
const Color kBlurBlueGreen = Color(0xFF0E9AA7);
const Color kSalmon = Color(0xFFFE8A71);
