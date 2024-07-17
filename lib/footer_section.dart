import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            'Footer content here',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          // Implemente os links do footer aqui
        ],
      ),
    );
  }
}
