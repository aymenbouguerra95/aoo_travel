import 'package:e_commerce_app/app_data.dart';
import 'package:e_commerce_app/widget/categore_item.dart';
import 'package:flutter/material.dart';
import '../widget/categore_item.dart';

class Catgorescrenns extends StatelessWidget {
  const Catgorescrenns({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('categore'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 20,
        ),
        children: Catagore_data.map((CategoreDAta) => CategoreItem(
              titles: CategoreDAta.title,
              imageURL: CategoreDAta.imageURL,
              id: CategoreDAta.id,
            )).toList(),
      ),
    );
  }
}
