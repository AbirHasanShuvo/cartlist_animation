import 'package:flutter/material.dart';

class BarChart extends StatelessWidget {
  const BarChart({super.key, required this.expenses});

  final List<double> expenses;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Weekly Spending',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),

        SizedBox(height: 5.0),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back, size: 30.0),
            ),

            Text(
              'Nov 10, 2025 - Nov 16, 2025',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2,
              ),
            ),

            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward, size: 30.0),
            ),
          ],
        ),
      ],
    );
  }
}
