import 'package:flutter/material.dart';

class Taskpage extends StatefulWidget {
  const Taskpage({Key? key}) : super(key: key);

  @override
  _TaskpageState createState() => _TaskpageState();
}

class _TaskpageState extends State<Taskpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 24,
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Image(
                        image: AssetImage('assets/back_arrow_icon.png'),
                      ),
                    ),
                  ),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter task title",
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF211551)),
                  ))
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
