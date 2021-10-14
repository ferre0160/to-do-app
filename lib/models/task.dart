import 'package:flutter/material.dart';

class Task {
  final int id;
  final String title;
  final String description;

  Task(
      {Key? key,
      required this.id,
      required this.title,
      required this.description})
      : super(key: key);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
    };
  }
}
