import 'package:flutter/material.dart';

import '../nft_card.dart';

class TrendingTab extends StatelessWidget {
  const TrendingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        NftCard(
          image: "lib/images/apiens_3.png",
          price: 2.50,
          onTap: () {},
        ),
      ],
    );
  }
}
