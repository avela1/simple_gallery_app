import 'package:flutter/material.dart';
import './../widgets/nft_card.dart';

class TrendingTap extends StatelessWidget {
  const TrendingTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NftCard(
      imgPath: 'lib/assets/images/apiens_1.png',
    );
  }
}
