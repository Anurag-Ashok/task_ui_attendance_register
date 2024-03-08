// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class custom_text_field extends StatefulWidget {
  TextEditingController? textEditingController;
  IconData? iconData;
  String? hintText;
  String? fieldText;
  bool? isPassword = true;
  bool? enabled = true;

  custom_text_field(
      {this.hintText,
      this.iconData,
      this.isPassword,
      this.enabled,
      this.textEditingController});

  @override
  State<custom_text_field> createState() => _custom_text_fieldState();
}

class _custom_text_fieldState extends State<custom_text_field> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(0, 4), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
            color: Colors.white),
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: TextField(
          enabled: widget.enabled,
          controller: widget.textEditingController,
          obscureText: widget.isPassword!,
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                widget.iconData,
                color: Colors.black,
              ),
              hintText: widget.hintText),
        ));
  }
}
