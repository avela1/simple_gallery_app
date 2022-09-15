import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTapBar extends StatelessWidget {
  final List tapOptions;
  const MyTapBar({Key? key, required this.tapOptions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.black,
            labelStyle: GoogleFonts.acme(fontSize: 17),
            tabs: [
              Text(tapOptions[0][0]),
              Text(tapOptions[1][0]),
              Text(tapOptions[2][0]),
            ]),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: TabBarView(
            children: [
              tapOptions[0][1],
              tapOptions[1][1],
              tapOptions[2][1],
            ],
          ),
        ),
      ],
    );
  }
}
