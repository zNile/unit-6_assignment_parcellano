import 'package:unit6_assignment_parcellano/components/tab_widget_1.dart';
import 'package:unit6_assignment_parcellano/components/tab_widget_2.dart';
import 'package:flutter/material.dart';

class About_Me extends StatefulWidget {
  const About_Me({super.key});

  @override
  State<About_Me> createState() => _About_MeState();
}

class _About_MeState extends State<About_Me> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('About Me'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person), text: 'Profile'),
              Tab(icon: Icon(Icons.favorite), text: 'Interests'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TabWidget1(), 
            TabWidget2(), 
          ],
        ),
      ),
    );
  }
}