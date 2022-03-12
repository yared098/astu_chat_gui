// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class show_bottom extends StatefulWidget {
  const show_bottom({Key? key}) : super(key: key);

  @override
  State<show_bottom> createState() => _show_bottomState();
}

class _show_bottomState extends State<show_bottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      // ignore: prefer_const_literals_to_create_immutables
      child: Column(children: [
        Text(
          "create new group ",
          style: TextStyle(
              color: Color.fromARGB(255, 15, 15, 15),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your group name.';
              }
              return null;
            },
            // controller: _phone_controler,
            keyboardType: TextInputType.text,
            autofocus: false,
            textInputAction: TextInputAction.next,

            // onFieldSubmitted: (term) {
            //   FocusScope.of(context).requestFocus(_lastNameFocus);
            // },
            decoration: InputDecoration(
              hintText: 'Enter group name ',
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your  group link.';
              }
              return null;
            },
            // controller: _phone_controler,
            keyboardType: TextInputType.text,
            autofocus: false,
            textInputAction: TextInputAction.next,

            // onFieldSubmitted: (term) {
            //   FocusScope.of(context).requestFocus(_lastNameFocus);
            // },
            decoration: InputDecoration(
              hintText: 'Enter grouplink ',
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'add group admin.';
              }
              return null;
            },
            // controller: _phone_controler,
            keyboardType: TextInputType.text,
            autofocus: false,
            textInputAction: TextInputAction.next,

            // onFieldSubmitted: (term) {
            //   FocusScope.of(context).requestFocus(_lastNameFocus);
            // },
            decoration: InputDecoration(
              hintText: 'Enter group admin ',
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10),
            child: MaterialButton(
              color: Colors.black,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "create group",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ))
      ]),
    );
  }
}
