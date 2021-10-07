import 'package:flutter/material.dart';
import 'package:todo_app/screens/taskpage.dart';
import 'package:todo_app/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          color: Color(0xFFF6F6F6),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 32, bottom: 32),
                    child: Image(
                      image: AssetImage('assets/logo.png'),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        TaskCardWidget(
                            title: "Taak 1", desc: "Dit is mijn eerste taak."),
                        TaskCardWidget(
                            title: "Taak 2", desc: "Dit is mijn tweede taak."),
                        TaskCardWidget(title: "Taak 3", desc: "Dit is taak 3."),
                        TaskCardWidget(title: "Taak 4", desc: "Dit is taak 4"),
                        TaskCardWidget(title: "Taak 5", desc: "Dit is taak 5"),
                        TaskCardWidget(title: "Taak 6", desc: "Dit is taak 6"),
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                bottom: 24,
                right: 0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Taskpage()));
                  },
                  child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFF7349FE),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image(
                        image: AssetImage("assets/add_icon.png"),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
