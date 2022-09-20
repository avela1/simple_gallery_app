import 'package:flutter/material.dart';

import '../widgets/nft_card.dart';

class TopTap extends StatelessWidget {
  const TopTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NftCard(
      imgPath: 'lib/assets/images/apiens_2.png',
    );
  }
}
