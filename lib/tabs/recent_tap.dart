import 'package:flutter/material.dart';

import '../widgets/nft_card.dart';

class RecentTap extends StatelessWidget {
  const RecentTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NftCard(
      imgPath: 'lib/assets/images/apiens_3.png',
    );
  }
}
