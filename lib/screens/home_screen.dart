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
                height: 100.0,
                color: Colors.red,
              );
            }, childCount: 10),
          ),
        ],
      ),
    );
  }
}
