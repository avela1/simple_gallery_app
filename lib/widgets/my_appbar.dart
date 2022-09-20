import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class MyAppBar extends StatelessWidget {
  final String title;
  Function onTap;
  MyAppBar({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
          child: Text(
            title,
            style: GoogleFonts.acme(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
        GestureDetector(
            child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey.shade900,
          ),
          child: const Icon(
            Icons.search,
            color: Colors.white,
            size: 36,
          ),
        ))
      ]),
    );
  }
}
