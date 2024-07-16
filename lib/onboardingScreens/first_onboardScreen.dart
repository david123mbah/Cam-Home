
import 'package:flutter/material.dart';


class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('android/assets/images/StockCake-Luxurious Mansion Estate_1721071456.jpg'), fit: BoxFit.cover
            ), 
          ), 
        ),
        const Positioned(
          top: 200,
          left: 78,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "let's Find your ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 0),
                Text(
                  ' dream house !',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                
              ],
            ),
          ),
        ),
      ],
    );
  }
}