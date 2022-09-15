import 'package:flutter/material.dart';

import './../widgets/my_tapbar.dart';
import './../widgets/my_appbar.dart';

import '../tabs/recent_tap.dart';
import '../tabs/top_tap.dart';
import '../tabs/trending_tap.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _tapOptions = [
    ['Recent', const RecentTap()],
    ['Trending', const TrendingTap()],
    ['Top', const TopTap()],
  ];

  void _searchButtonClicked() {}

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tapOptions.length,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: ListView(
          children: [
            MyAppBar(title: 'Explore Collections', onTap: _searchButtonClicked),
            SizedBox(
              height: 600,
              child: MyTapBar(
                tapOptions: _tapOptions,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
