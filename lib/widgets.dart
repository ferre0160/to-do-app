import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  final String title;
  final String desc;
  const TaskCardWidget({Key? key, required this.title, required this.desc})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? "(Unnamed Task)",
              style: TextStyle(
                  color: Color(0xFF211551),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                desc ??
                    'Hello User! Welcome to the TODO app, this is a default task that you can edit or delete to start using the app.',
                style: TextStyle(
                    fontSize: 16, color: Color(0xFF868290), height: 1.5),
              ),
            )
          ],
        ));
  }
}
