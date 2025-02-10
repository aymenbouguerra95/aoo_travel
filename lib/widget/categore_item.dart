import 'package:e_commerce_app/screnns/Categore_Scriptt.dart';
import 'package:flutter/material.dart';

class CategoreItem extends StatelessWidget {
  final String id;
  final String titles;
  final String imageURL;
  const CategoreItem(
      {super.key,
      required this.titles,
      required this.imageURL,
      required this.id});
  void GoOtherScreen(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CategoreScriptt.nameofPAgeScript,
      arguments: {
        'id':id,
        'title':titles,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      onTap: () => GoOtherScreen(context),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                imageURL,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black.withOpacity(0.4),
                ),
                child: Text(
                  titles,
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
