import 'package:flutter/material.dart';

class DetailInfo extends StatelessWidget {
  DetailInfo(this.title, this.value);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              value,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(title),
          ],
        ),
      ],
    );
  }
}
