import 'package:flutter/material.dart';
import 'package:quiz_app/home/home.dart';

class MainPage extends StatefulWidget {
  final String? userName;

  const MainPage({super.key, required this.userName});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.note)),
                Tab(icon: Icon(Icons.draw)),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Home(),
              Center(child: Text('Notities')),
              Center(child: Text('Tekenen')),
            ],
          ),
        ),
      ),
    );
  }
}
