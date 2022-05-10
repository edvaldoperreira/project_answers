import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String text = 'Congratulations! There are no more questions for you!';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
