import 'package:flutter/material.dart';

import '../nft_card.dart';

class TrendingTab extends StatelessWidget {
  const TrendingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NftCard(
      image: "lib/images/apiens_3.png",
    );
  }
}
