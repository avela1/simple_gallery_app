import 'package:flutter/material.dart';

class MyTapBar extends StatelessWidget {
  final List tapOptions;
  const MyTapBar({Key? key, required this.tapOptions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('tap bar');
  }
}
