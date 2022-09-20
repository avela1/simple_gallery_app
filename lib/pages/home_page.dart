import 'package:flutter/material.dart';
import 'package:simple_gallery_app/widgets/my_bottombar.dart';

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
  int _currentIndex = 0;
  void _searchButtonClicked() {}
  void _handleBottomIndex(int? index) {
    setState(() {
      _currentIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tapOptions.length,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        bottomNavigationBar: MyBottomBar(
          index: _currentIndex,
          onTap: _handleBottomIndex,
        ),
        body: ListView(
          children: [
            MyAppBar(
              title: 'Explore Collections',
              onTap: _searchButtonClicked,
            ),
            SizedBox(
              height: 650,
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
