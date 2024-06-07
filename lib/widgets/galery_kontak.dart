import 'package:flutter/material.dart';

class TabItems extends StatelessWidget {
  const TabItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TabDetailItem(Icons.grid_on_outlined, true),
        TabDetailItem(Icons.person_pin_outlined, false),
      ],
    );
  }
}

class TabDetailItem extends StatelessWidget {
  final bool active;
  final IconData icon;

  TabDetailItem(this.icon, this.active);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: active ? Colors.black : Colors.white,
              width: 1.5,
            ),
          ),
        ),
        child: Icon(icon, size: 30),
      ),
    );
  }
}
