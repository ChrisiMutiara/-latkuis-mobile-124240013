import 'package:flutter/material.dart';
import 'package:kuis_coba/models/data.dart';

class DetailPage extends StatelessWidget {
  final Menu menu;

  const DetailPage({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(menu.name)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            menu.image,
            width: double.infinity,
            height: 220,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 16),
          Text(
            menu.name,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(menu.category),
          SizedBox(height: 8),
          Text(
            menu.price,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          SizedBox(height: 16),
          Text(
            "Deskripsi",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(menu.description),
        ],
      ),
    );
  }
}