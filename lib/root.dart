import 'package:flutter/material.dart';
import 'package:kuis_coba/views/home.dart';
import 'package:kuis_coba/views/profile.dart';

class Root extends StatefulWidget {
  final String username;

  const Root({super.key, required this.username});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      HomePage(),
      ProfilePage(username: widget.username),
    ];

    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}