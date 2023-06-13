import 'package:flutter/material.dart';
import 'custom_card.dart';
import 'custom_types.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff004096),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage("images/ahmed.png"),
            backgroundColor: Colors.white70,
          ),
          SizedBox(height: 16),
          Text(
            "Ahmed H. Lulu",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: "Pacifico"),
          ),
          SizedBox(height: 16),
          Text(
            "Mobile Developer",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              letterSpacing: 3,
            ),
          ),
          SizedBox(
            height: 56,
            width: 200,
            child: Divider(
              thickness: 1,
              color: Color(0xff887dfd),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 34.0),
            child: Column(
              children: [
                CustomCard(Types.phone),
                CustomCard(Types.email),
                CustomCard(Types.website),
              ],
            ),
          )
        ],
      ),
    );
  }
}
