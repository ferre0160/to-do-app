import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  final String title;
  final String desc;
  const TaskCardWidget(
      {Key? key,
      this.title = "(Unnamed Task)",
      this.desc =
          'Hello User! Welcome to the TODO app, this is a default task that you can edit or delete to start using the app.'})
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
              title,
              style: TextStyle(
                  color: Color(0xFF211551),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                desc,
                style: TextStyle(
                    fontSize: 16, color: Color(0xFF868290), height: 1.5),
              ),
            )
          ],
        ));
  }
}

class TodoWidget extends StatelessWidget {
  const TodoWidget(
      {Key? key, this.text = "(To-Do Widget)", this.isDone = false})
      : super(key: key);

  final String text;
  final bool isDone;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 8,
      ),
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            margin: EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              color: isDone ? const Color(0xFF7349FE) : Colors.transparent,
              borderRadius: BorderRadius.circular(6),
              border: isDone
                  ? null
                  : Border.all(
                      color: Color(0xFF86829D),
                      width: 1.5,
                    ),
            ),
            child: Image(image: AssetImage('assets/check_icon.png')),
          ),
          Text(
            text,
            style: TextStyle(
                color: isDone ? Color(0xFF211551) : Color(0xFF86829D),
                fontSize: 16,
                fontWeight: isDone ? FontWeight.bold : FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class NoGlowScrollBehaviour extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
