import 'package:animation_cartlist/data/data.dart';
import 'package:animation_cartlist/widgets/bar_chart.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            forceElevated: true,
            // floating: true,
            pinned: true,
            //this pinned true is really a good feature
            expandedHeight: 100.0,
            // automaticallyImplyLeading: true,
            backgroundColor: Colors.green,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Simple Budget',
                style: TextStyle(color: Colors.white),
              ),
            ),
            leading: IconButton(
              onPressed: () {},
              iconSize: 30,
              icon: Icon(Icons.settings, color: Colors.white),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
                iconSize: 30,
                color: Colors.white,
              ),
            ],
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate((
              BuildContext context,
              int index,
            ) {
              return Container(
                margin: EdgeInsets.all(10),

                // height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 2),
                      blurRadius: 6.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: BarChart(expenses: weeklySpending),
              );
            }, childCount: 1),
          ),
        ],
      ),
    );
  }
}
