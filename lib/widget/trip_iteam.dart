import 'package:e_commerce_app/models/trip.dart';
import 'package:flutter/material.dart';

class TripIteam extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int duration;
  final TripType tripType;
  final Season season;

  const TripIteam(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.duration,
      required this.tripType,
      required this.season});

  void SelecteTrip() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      onTap: SelecteTrip,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 7, //degre shadow of card
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.black.withOpacity(0), Colors.black.withOpacity(0.8)],
                        stops: [0.4,1]),
                  ),
                  padding: EdgeInsetsDirectional.symmetric(
                      horizontal: 10, vertical: 10),
                  height: 250,
                  alignment: Alignment.bottomRight,
                  child: Text(
                    title,
                    overflow: TextOverflow.clip,
                    style: TextStyle(color: Colors.white, fontSize: 40),
                    
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Row(children: [Text('$duration أيام'),
                    Icon(Icons.today,color:Colors.amber,),
                    SizedBox(width: 6,),
                    
                  ],),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
