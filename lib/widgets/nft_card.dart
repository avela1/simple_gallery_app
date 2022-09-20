import 'package:flutter/material.dart';

class NftCard extends StatelessWidget {
  final String imgPath;

  const NftCard({Key? key, required this.imgPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          imgPath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
