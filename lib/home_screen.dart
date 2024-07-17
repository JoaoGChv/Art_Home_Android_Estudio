import 'package:art_home/about_section.dart';
import 'package:art_home/carousel_section.dart';
import 'package:art_home/footer_section.dart';
import 'package:art_home/header_widget.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Art Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(),
            CarouselSection(),
            AboutSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
