import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.black,
      child: Center(
        child: Text(
          'Art Home',
          style: TextStyle(
            fontSize: 36,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
