// ignore: file_names
import 'package:flutter/material.dart';
import 'package:movein/widget/build_Items.dart';
import 'package:movein/utils/places.dart';


class BuildingsClose extends StatelessWidget { 
  const BuildingsClose({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        itemCount: buildings.length,
        itemBuilder: (context , index) {
          return  BuildingItem(
            building: buildings[index],
            height: 350,
            width: 300,
            margin: EdgeInsets.only(
              left: index == 0 ? 0 : 16,
            ),
          );
        }
        ),
    );
  }
}