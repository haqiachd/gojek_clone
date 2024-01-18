import 'package:flutter/material.dart';

class EventTitleModel {
  String? icon;
  String? title;
  String? btnTitle;
  String? deskripsi;
  bool haveButton;
  Widget? child;

  EventTitleModel({
    this.icon,
    this.title,
    this.btnTitle,
    this.deskripsi,
    this.haveButton = false,
    this.child,
  });
}
