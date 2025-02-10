import 'package:e_commerce_app/models/trip.dart';
import 'package:e_commerce_app/widget/categore_item.dart';
import 'package:e_commerce_app/widget/trip_iteam.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/app_data.dart';

class CategoreScriptt extends StatelessWidget {
  static const nameofPAgeScript = '/CategoreScriptt';
  // final String CategoreId;
  // final String CategoreTitle;

  // const CategoreScriptt({super.key, required this.CategoreId, required this.CategoreTitle});

  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoreId = routeArgument['id'];
    final CategoreTitle = routeArgument['title'];
    // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
    final filterTripss = Trips_data.where((Trip) {
      return Trip.categories.contains(categoreId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(CategoreTitle!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return TripIteam(
                title: filterTripss[index].title,
                imageUrl: filterTripss[index].imageUrl,
                duration: filterTripss[index].duration,
                tripType: filterTripss[index].tripType,
                season: filterTripss[index].season);
          },
          itemCount: filterTripss.length,
        ),
      ),
    );
  }
}
