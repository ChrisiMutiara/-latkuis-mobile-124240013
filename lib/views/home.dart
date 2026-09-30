import 'package:flutter/material.dart';
import 'package:kuis_coba/models/data.dart';
import 'package:kuis_coba/views/detail.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: menus.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(menu: menus[index]),
              ),
            );
          },
          title: Text(menus[index].name),
          subtitle: Text("${menus[index].category} - ${menus[index].price}"),
          leading: Image.network(
            menus[index].image,
            width: 50,
            height: 50,
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        );
      },
    );
  }
}