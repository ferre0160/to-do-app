import 'package:flutter/material.dart';
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
            vertical: 32,
          ),
          color: Color(0xFFF6F6F6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 32),
                child: Image(
                  image: AssetImage('assets/logo.png'),
                ),
              ),
              TaskCardWidget(
                title: "Taak 1",
                desc: "Dit is mijn eerste taak.",
              ),
              TaskCardWidget(
                title: "Taak 2",
                desc: "Dit is mijn tweede taak.",
              ),
              TaskCardWidget(title: "Taak 3", desc: "Dit is taak 3.")
            ],
          ),
        ),
      ),
    );
  }
}
