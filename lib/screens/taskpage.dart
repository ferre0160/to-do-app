import 'package:flutter/material.dart';
import 'package:todo_app/widgets.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 24,
                bottom: 6,
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
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 12,
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter a description for your task ...",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 24,
                    )),
              ),
            ),
            TodoWidget(
              text: "Create first task",
              isDone: true,
            ),
            TodoWidget(
              text: "hghgh",
              isDone: false,
            ),
            TodoWidget(
              text: "uououo",
              isDone: false,
            ),
            TodoWidget(
              text: "ererer",
              isDone: false,
            ),
          ],
        )),
      ),
    );
  }
}
